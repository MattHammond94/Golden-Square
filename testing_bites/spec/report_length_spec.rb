require 'report_length'

describe 'ReportLength' do
  it 'should return a string containing the total length of passed chars as an int' do
    expect(report_length("abcd")).to eq "This string was 4 characters long." 
  end

  it 'should return a string containing the total length of passed chars as an int' do
    expect(report_length("abcdefghij")).to eq "This string was 10 characters long." 
  end

  it 'should return a string containing the total length of passed chars as an int' do
    expect(report_length("abcdefghijklmnopqrstuvwxyz")).to eq "This string was 26 characters long." 
  end
end