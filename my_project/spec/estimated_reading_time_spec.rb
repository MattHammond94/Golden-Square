require 'estimated_reading_time'

describe 'EstimatedReadingTime' do
  it 'Should return 1 for a total of 200 words' do
    expect(estimated_reading_time("200 words")).to eq 1
  end
end