require 'make_snippet'

describe 'MakeSnippet' do
  context 'if string has less than 5 words' do 
    it 'it should return the string' do
      expect(make_snippet("Jimmy Walker")).to eq "Jimmy Walker"
      expect(make_snippet("Benicio Del Toro")).to eq "Benicio Del Toro"
      expect(make_snippet("four simple words ok")).to eq "four simple words ok"
    end
  end

  context 'if string has more than 5 words' do
    it 'Should return the first 5 words of this string followed by "..."' do
      expect(make_snippet("avocados are bloomin great my good man")).to eq "avocados are bloomin great my..."
      expect(make_snippet("luther van dross what a guy end of sentence")).to eq "luther van dross what a..."
      expect(make_snippet("arpeggio on my keyboard sound good yes")).to eq "arpeggio on my keyboard sound..."
    end
  end
end