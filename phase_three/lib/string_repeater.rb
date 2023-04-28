class StringRepeater
  
  def initialize(terminal)
    @terminal = terminal 
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    @terminal.puts "Please enter a string"
    string_input = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    number = @terminal.gets.chomp
    number_input(number)
    @terminal.puts "Here is your result:"
    @terminal.puts string_input * number_input(number)
  end

  private 

  def number_input(num)
    if num.to_i <= 0 
      fail "Integer must be a postive number." 
    else 
      num.to_i
    end
  end
end