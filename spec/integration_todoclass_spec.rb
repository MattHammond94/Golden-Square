require "todo"
require "todo_list"

describe TodoList do
  context "Multiple Todos added" do
    it "Should return a list of all the todos if none have been marked as complete" do
      todo_1 = Todo.new("Walk the ferrit")
      todo_2 = Todo.new("Walk the dog")
      todo_3 = Todo.new("Walk the cat")
      list = TodoList.new
      list.add(todo_1)
      list.add(todo_2)
      list.add(todo_3)
      expect(list.incomplete).to eq [todo_1, todo_2, todo_3]
    end

    it "Should return a list of just completed todos after mark_done has been called" do
      todo_1 = Todo.new("Walk the ferrit")
      todo_2 = Todo.new("Walk the dog")
      todo_3 = Todo.new("Walk the cat")
      list = TodoList.new
      todo_2.mark_done!
      list.add(todo_1)
      list.add(todo_2)
      list.add(todo_3)
      expect(list.complete).to eq [todo_2]
    end

    it "Should return a true for all todo's after give_up has been called" do
      todo_1 = Todo.new("Walk the ferrit")
      todo_2 = Todo.new("Walk the dog")
      todo_3 = Todo.new("Walk the cat")
      list = TodoList.new
      list.add(todo_1)
      list.add(todo_2)
      list.add(todo_3)
      list.give_up!
      expect(todo_1.done?).to eq true
      expect(todo_2.done?).to eq true
      expect(todo_3.done?).to eq true
    end
  end

  context 'failures' do
    it 'Should return an empty array when todo is initialized with an empty string' do
      todo_1 = Todo.new("")
      list = TodoList.new
      list.add(todo_1)
      expect(list.incomplete).to eq []
    end
  end
end