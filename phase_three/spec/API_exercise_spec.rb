require 'API_exercise'
require 'net/http'


describe TimeError do
  it 'Returns the difference in time between server and local' do
    fake_request = double :request
    allow(fake_request).to receive(:get).with(URI("https://worldtimeapi.org/api/ip")).and_return('{"abbreviation":"BST","client_ip":"80.189.23.95","datetime":"2023-04-21T14:28:14.344159+01:00","day_of_week":5,"day_of_year":111,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1682083694,"utc_datetime":"2023-04-21T13:28:14.344159+00:00","utc_offset":"+01:00","week_number":16}')
    time = Time.new(2023, 4, 21, 14, 28, 14)
    time_error = TimeError.new(fake_request) 
    expect(time_error.error(time)).to eq 0.344159
  end
end

# describe TimeError do 
#   it 'Should ' do 
#     fake_request = double :request
#     expect(fake_request).to receive(:get).with("https://worldtimeapi.org/api/ip").and_return('{"abbreviation":"BST","client_ip":"80.189.23.95","datetime":"2023-04-21T14:00:25.102388+01:00","day_of_week":5,"day_of_year":111,"dst":true,"dst_from":"2023-03-26T01:00:00+00:00","dst_offset":3600,"dst_until":"2023-10-29T01:00:00+00:00","raw_offset":0,"timezone":"Europe/London","unixtime":1682082025,"utc_datetime":"2023-04-21T13:00:25.102388+00:00","utc_offset":"+01:00","week_number":16}')
#     time_1 = TimeError.new(fake_request)
#     expect(time_1.error).to eq "???"
#   end
# end

# curl used in terminal to locate and_return arg from api link