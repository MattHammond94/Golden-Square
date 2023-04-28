class StringRepeater
  
  def initialize(terminal)
    @terminal = terminal 
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    string_input = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    number_input = @terminal.gets.chomp
    @terminal.puts "Here is your result:"
    @terminal.puts string_input * number_input.to_i
  end
end