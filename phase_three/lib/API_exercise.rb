require 'date'
require 'json'

class TimeError
  def initialize(request)
    @requester = request
  end

  def error(current_time)
    return get_server_time - current_time
  end

  private

  def get_server_time
    text_response = @requester.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

# time = TimeError.new
# p time.error
# p time.get_server_time

# Net::HTTP <<< This ere creates API request - This is what needs to be controlled.

require 'net/http'
time_error = TimeError.new(Net::HTTP)
p time_error.error(Time.now)
