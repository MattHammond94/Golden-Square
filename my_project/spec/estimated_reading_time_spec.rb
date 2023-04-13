require 'estimated_reading_time'

describe 'EstimatedReadingTime' do
  it 'Should return 1 for a total of 200 words' do
    expect(estimated_reading_time(200)).to eq 1
  end

  it 'Should return 2 for a total of 400 words' do
    expect(estimated_reading_time(400)).to eq 2
  end
end