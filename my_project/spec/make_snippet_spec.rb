require 'make_snippet'

describe 'MakeSnippet' do
  it 'Should return the first 5 words of this string' do
    expect(make_snippet("avocados are bloomin great mate")).to eq "avocados are bloomin great mate"
    expect(make_snippet("luther van dross what a guy end of sentence")).to eq "luther van dross what a"
    expect(make_snippet("arpeggio on my keyboard sound good yes")).to eq "arpeggio on my keyboard sound"
  end
end