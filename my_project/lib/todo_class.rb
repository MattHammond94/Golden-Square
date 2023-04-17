class TodoTracker
  def initialize(title)
    @title = title
    @list = []
  end

  def add(task)
    fail "This is not a valid input" unless task.is_a?(String)
    task.empty? ? nil : @list << task
  end

  def list
    @list
    # puts "#{@title}:"
    # puts @list
    # ^^^ This would require all the test expected outputs to be rewritten to account for a
    # list of strings now as opposed to an array - just an aesthetic preference more than 
    # a necessity.
  end

  def mark_as_complete(task)
    fail "This task does not exist therefore cannot be completed" if !@list.include?(task)
    @list.delete(task)
  end
end