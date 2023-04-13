require 'grammar_checker'

describe 'GrammarChcecker' do
  it 'should return true when grammar is correct as per spec' do
    expect(grammar_checker("This is correct.")).to eq true
  end

  it 'should return false when the grammar is incorrect as per spec' do
    expect(grammar_checker("this is incorrect")).to eq false
  end

  it 'Should return false when text does not end in correct grammar' do
    expect(grammar_checker("This is incorrect]>")).to eq true
  end
end