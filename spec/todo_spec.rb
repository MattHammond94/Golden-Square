require 'todo'

describe Todo do
  context 'Done' do
    it 'Should return false if mark_done not called on created todo' do
      todo_1 = Todo.new("Walk the ferrit")
      expect(todo_1.done?).to eq false
    end
  end

  context 'Done' do
    it 'Should return true if mark_done called on created todo' do
      todo_1 = Todo.new("Walk the ferrit")
      todo_1.mark_done!
      expect(todo_1.done?).to eq true
    end
  end
end