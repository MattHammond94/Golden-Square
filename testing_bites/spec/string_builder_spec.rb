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
    string = StringBuilder.new
    string.add("Virgil")
    expect(string.output).to eq "Virgil"
  end

  it 'Should return a combined string when output called after multiple adds' do
    string = StringBuilder.new
    string.add("Virgil")
    string.add("Van")
    string.add("Dijk")
    expect(string.output).to eq "VirgilVanDijk"
  end

  it 'Should return an empty string when output called on no adds' do
    expect(StringBuilder.new.output).to eq ""
  end

  it 'Should return a 0 when size called on no adds' do
    expect(StringBuilder.new.size).to eq 0
  end
end