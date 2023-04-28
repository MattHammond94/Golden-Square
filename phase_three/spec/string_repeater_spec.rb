require 'string_repeater'

describe StringRepeater do
  it 'Should repeat given string given amount of times' do
    io = double :terminal
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("Cabbage").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("5").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("CabbageCabbageCabbageCabbageCabbage").ordered
    repeater = StringRepeater.new(io)
    repeater.run
  end
end