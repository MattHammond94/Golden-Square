require "todo"
require "todo_list"

describe TodoList do
  context "Multiple Todos added" do
    it "Should" do
      todo_1 = Todo.new("Walk the ferrit")
      todo_2 = Todo.new("Walk the dog")
      todo_3 = Todo.new("Walk the cat")
      list = TodoList.new
      list.add(todo_1)
      list.add(todo_2)
      list.add(todo_3)
      expect(list.incomplete).to eq [todo_1, todo_2, todo_3]
    end

    it "Should" do
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

    it "Should" do
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
end