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
  end

  def mark_as_complete(task)
    fail "This task does not exist therefore cannot be completed" if !@list.include?(task)
    location = @list.index(task)
    @list.delete_at(location)
  end
end