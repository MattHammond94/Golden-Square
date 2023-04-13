require 'grammar_checker'

describe 'GrammarChcecker' do
  it 'should return true when grammar is correct as per spec' do
    expect(grammar_checker("This is correct.")).to eq true
  end
end