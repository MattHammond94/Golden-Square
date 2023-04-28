class InteractiveCalculator

  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello, I will subtract two numbers."
    @terminal.puts "Please enter a number"
    input_1 = @terminal.gets.chomp
    fail "Input must be a valid integer." unless input_1.match(/\d/)
    @terminal.puts "Please enter another number"
    input_2 = @terminal.gets.chomp
    fail "Input must be a valid integer." unless input_2.match(/\d/)
    @terminal.puts "Here is your result:"
    result = input_1.to_i - input_2.to_i
    @terminal.puts "#{input_1} - #{input_2} = #{result}"
  end
end


# interactive_calculator = InteractiveCalculator.new(Kernel)
# interactive_calculator.run