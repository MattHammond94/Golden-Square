require 'todo_class'

describe TodoTracker do 
  context 'multiple tasks added to new todo list' do
    it 'Should return a list of tasks after multiple adds called.' do
      todo_1 = TodoTracker.new("Aprils tasks")
      todo_1.add("Buy a new knuckleduster")
      todo_1.add("Polish said knuckleduster")
      todo_1.add("Update my ipod")
      expect(todo_1.list).to eq ["Buy a new knuckleduster", "Polish said knuckleduster", "Update my ipod"]
    end
  end

end