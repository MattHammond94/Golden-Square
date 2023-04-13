require 'estimated_reading_time'

describe 'EstimatedReadingTime' do

  context 'Word counts greater than 200' do
    it 'Should return a value in minutes for word counts higher than 200' do
      expect(estimated_reading_time(250)).to eq "1.25 minutes to read"
      expect(estimated_reading_time(400)).to eq "2 minutes to read"
      expect(estimated_reading_time(500)).to eq "2.5 minutes to read"
      expect(estimated_reading_time(1000)).to eq "5 minutes to read"
    end
  end

  context 'word counts less than or equal to 200' do
    it 'Should return a value in seconds if text word count is less than 200' do
      expect(estimated_reading_time(200)).to eq "60 seconds"
      expect(estimated_reading_time(150)).to eq "45 seconds"
      expect(estimated_reading_time(100)).to eq "30 seconds"
      expect(estimated_reading_time(87)).to eq "26 seconds"
      expect(estimated_reading_time(20)).to eq "6 seconds"
      expect(estimated_reading_time(10)).to eq "3 seconds"
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