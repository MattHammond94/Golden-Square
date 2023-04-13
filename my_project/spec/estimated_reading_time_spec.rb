require 'estimated_reading_time'

describe 'EstimatedReadingTime' do

  it 'Should return 1 for a total of 200 words' do
    expect(estimated_reading_time(200)).to eq 1
  end

  it 'Should return 2 for a total of 400 words' do
    expect(estimated_reading_time(400)).to eq 2
  end

  context 'word counts less than 200' do
    it 'Should return a value in seconds if text word count is less than 200' do
      expect(estimated_reading_time(150)).to eq 45
      expect(estimated_reading_time(100)).to eq 30
      expect(estimated_reading_time(87)).to eq 26.1 
      expect(estimated_reading_time(20)).to eq 6
      expect(estimated_reading_time(10)).to eq 3
    end
  end

  context 'no amount of words' do
    it 'Should return a 0 for no words' do
      expect(estimated_reading_time(0)).to eq 0
    end
  end
  
  context 'Should return an error for invalid inputs' do
    it 'fails' do
      expect { estimated_reading_time(nil) }.to raise_error "You have not entered a valid amount of words"
    end
  end
end