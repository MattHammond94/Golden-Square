require 'cat_facts'
require 'net/http'

describe CatFacts do
  it 'Should return a random cat fact when provide is called' do
    fake = double :fake
    expect(fake).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"In the 1930s, two Russian biologists discovered that color change in Siamese kittens depend on their body temperature. Siamese cats carry albino genes that work only when the body temperature is above 98\u00b0 F. If these kittens are left in a very warm room, their points won\u2019t darken and they will stay a creamy white.","length":315}')
    fact = CatFacts.new(fake)
    expect(fact.provide).to eq "Cat fact: In the 1930s, two Russian biologists discovered that color change in Siamese kittens depend on their body temperature. Siamese cats carry albino genes that work only when the body temperature is above 98\u00b0 F. If these kittens are left in a very warm room, their points won\u2019t darken and they will stay a creamy white."
  end
end