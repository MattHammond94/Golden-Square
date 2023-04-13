require 'estimated_reading_time'

describe 'EstimatedReadingTime' do
  it 'Should return 1 for a total of 200 words' do
    expect(estimated_reading_time(200)).to eq 1
  end

  it 'Should return 2 for a total of 400 words' do
    expect(estimated_reading_time(400)).to eq 2
  end

  it 'Should return 0.5 for a total of 100 words' do
    expect(estimated_reading_time(100)).to eq 0.5
  end

  it 'Should return 0.1 for a total of 20 words' do
    expect(estimated_reading_time(20)).to eq 0.1
  end

  it 'Should return a 0 for no words' do
    expect(estimated_reading_time(0)).to eq 0
  end

  it 'Should return an error if nothing is passed as an arg' do
    expect { estimated_reading_time(nil) }.to raise_error "You have not entered a valid amount of words"
  end
end