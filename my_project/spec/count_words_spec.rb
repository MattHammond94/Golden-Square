require 'count_words'

describe 'count_words' do
  it 'Should return 3 for a string containing 3 words' do 
    expect(count_words("ham")).to eq 3
  end
end