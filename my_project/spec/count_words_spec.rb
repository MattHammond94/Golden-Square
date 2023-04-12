require 'count_words'

describe 'count_words' do
  it 'Should return 3 for a string containing 3 words' do 
    expect(count_words("ham is nice")).to eq 3
  end

  it 'Should return 5 for a string containing 5 words' do 
    expect(count_words("boris has really bad hair")).to eq 5
  end

  it 'Should expect an empty string to return 0' do
    expect(count_words("")).to eq 0
  end
end