require 'make_snippet'

describe 'MakeSnippet' do
  it 'if string has less than 5 words should return the string' do
    expect(make_snippet("Jimmy Walker")).to eq "Jimmy Walker"
    expect(make_snippet("Benicio Del Toro")).to eq "Benicio Del Toro"
    expect(make_snippet("four simple words ok")).to eq "four simple words ok"
  end

  it 'if string has more than 5 words it should return the first 5 words of this string' do
    expect(make_snippet("avocados are bloomin great mate")).to eq "avocados are bloomin great mate"
    expect(make_snippet("luther van dross what a guy end of sentence")).to eq "luther van dross what a"
    expect(make_snippet("arpeggio on my keyboard sound good yes")).to eq "arpeggio on my keyboard sound"
  end
end