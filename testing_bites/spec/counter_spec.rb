require 'counter'

describe Counter do 
  it 'Should return a count of 0 when report is called after no adds' do
    expect(Counter.new.report).to eq "Counted to 0 so far."
  end

  it 'Should return a total count equal to multiple adds when report is called' do
    count = Counter.new 
    count.add(3)
    count.add(5)
    count.add(10)
    expect(count.report).to eq "Counted to 18 so far."
  end
end
