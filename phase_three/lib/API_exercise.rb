require 'date'
require 'json'
require 'net/http'

class TimeError
  def initialize(request)
    requester = request
  end

  def error
    return get_server_time - Time.now
  end

  private

  def get_server_time
    text_response = Net::HTTP.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

# time = TimeError.new
# p time.error
# p time.get_server_time

# Net::HTTP <<< This ere creates API request - This is what needs to be controlled.

