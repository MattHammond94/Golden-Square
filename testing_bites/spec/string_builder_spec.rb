require 'string_builder'

describe 'StringBuilder' do
  it 'Should return an int length after one add method call' do
    expect(StringBuilder.new.add("Klopp").size).to eq 5
  end

  it 'Should return an int length for total string size after multile add method calls' do 
      string = StringBuilder.new
      string.add("Jurgen")
      string.add("Klopp")
      string.add("Coach")
      expect(string.size).to eq 16
  end

  it 'Should return a string when output called after one add' do
    
  end
end

