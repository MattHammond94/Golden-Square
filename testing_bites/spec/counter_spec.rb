require 'counter'

describe Counter do 
  it 'Should return a count of 0 when report is called after no adds' do
    expect(Counter.new.report).to eq "Counted to 0 so far."
  end
end