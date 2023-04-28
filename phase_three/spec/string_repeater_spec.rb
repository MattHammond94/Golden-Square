require 'string_repeater'

describe StringRepeater do
  it 'Should repeat given string given amount of times' do
    terminal = double :io
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("Cabbage").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("5").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("CabbageCabbageCabbageCabbageCabbage").ordered
    repeater = StringRepeater.new(terminal)
    repeater.run
  end

  it 'Should repeat given string given amount of times' do
    terminal = double :io
    expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
    expect(terminal).to receive(:puts).with("Please enter a string").ordered
    expect(terminal).to receive(:gets).and_return("Salmon").ordered
    expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
    expect(terminal).to receive(:gets).and_return("3").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("SalmonSalmonSalmon").ordered
    repeater = StringRepeater.new(terminal)
    repeater.run
  end

  context 'fails/errors' do
    it 'return an error message when a negative int is given ' do
      terminal = double :io
      expect(terminal).to receive(:puts).with("Hello. I will repeat a string many times.").ordered
      expect(terminal).to receive(:puts).with("Please enter a string").ordered
      expect(terminal).to receive(:gets).and_return("Salmon").ordered
      expect(terminal).to receive(:puts).with("Please enter a number of repeats").ordered
      expect(terminal).to receive(:gets).and_return("-3").ordered
      repeater = StringRepeater.new(terminal)
      expect { repeater.run }.to raise_error "Integer must be a postive number."
    end
  end
end