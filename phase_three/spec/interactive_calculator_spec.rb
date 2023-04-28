require 'interactive_calculator'

describe InteractiveCalculator do
  it 'Subtracts two given numbers' do
    terminal = double :io
    expect(terminal).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("10").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("4").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("10 - 4 = 6").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
  end

  it 'Should subtract two numbers and return a negative value' do
    terminal = double :io
    expect(terminal).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("10").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("13").ordered
    expect(terminal).to receive(:puts).with("Here is your result:").ordered
    expect(terminal).to receive(:puts).with("10 - 13 = -3").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    interactive_calculator.run
  end

  # it 'Should subtract two floating point numbers' do
  #   terminal = double :io
  #   expect(terminal).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
  #   expect(terminal).to receive(:puts).with("Please enter a number").ordered
  #   expect(terminal).to receive(:gets).and_return("0.9").ordered
  #   expect(terminal).to receive(:puts).with("Please enter another number").ordered
  #   expect(terminal).to receive(:gets).and_return("0.2").ordered
  #   expect(terminal).to receive(:puts).with("Here is your result:").ordered
  #   expect(terminal).to receive(:puts).with("0.9 - 0.2 = 0.7").ordered
  #   interactive_calculator = InteractiveCalculator.new(terminal)
  #   interactive_calculator.run
  # end

  it 'Should fail/error when given a value thats not an integer' do
    terminal = double :io
    expect(terminal).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("Sandwich").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    expect { interactive_calculator.run }.to raise_error "Input must be a valid integer."
  end

  it 'Should fail/error when given a value thats not an integer' do
    terminal = double :io
    expect(terminal).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("[..]/").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    expect { interactive_calculator.run }.to raise_error "Input must be a valid integer."
  end

  it 'Should fail/error when given a value thats not an integer as the second input' do
    terminal = double :io
    expect(terminal).to receive(:puts).with("Hello, I will subtract two numbers.").ordered
    expect(terminal).to receive(:puts).with("Please enter a number").ordered
    expect(terminal).to receive(:gets).and_return("12").ordered
    expect(terminal).to receive(:puts).with("Please enter another number").ordered
    expect(terminal).to receive(:gets).and_return("String").ordered
    interactive_calculator = InteractiveCalculator.new(terminal)
    expect { interactive_calculator.run }.to raise_error "Input must be a valid integer."
  end
end