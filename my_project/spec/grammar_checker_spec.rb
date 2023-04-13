require 'grammar_checker'

describe 'GrammarChcecker' do
  it 'should return true when grammar is correct as per spec' do
    expect(grammar_checker("This is correct.")).to eq true
  end

  it 'should return false when the grammar is incorrect as per spec' do
    expect(grammar_checker("this is incorrect")).to eq false
  end

  it 'Should return false when text does not end in correct grammar' do
    expect(grammar_checker("This is incorrect]>")).to eq false
  end

  it "Should return false for an empty string" do 
    expect(grammar_checker("")).to eq false
    expect(grammar_checker(" ")).to eq false
    expect(grammar_checker("      ")).to eq false
  end

  context 'failures' do 
    it 'Should return an error if anything other than a string is passed' do
      expect { grammar_checker(:symbol) }.to raise_error "This is not a valid input type"
      expect { grammar_checker(9) }.to raise_error "This is not a valid input type"
      expect { grammar_checker(true) }.to raise_error "This is not a valid input type"
    end
  end
end