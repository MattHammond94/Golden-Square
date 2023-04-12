require 'make_snippet'

describe 'MakeSnippet' do
  it 'Should return the string' do
    expect(make_snippet("avocados")).to eq "avocados"
    expect(make_snippet("luther-van-dross")).to eq "luther-van-dross"
    expect(make_snippet("arpeggio")).to eq "arpeggio"
  end
end