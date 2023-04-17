require 'todo_class'

describe TodoTracker do 

  context 'No tasks added to list' do
    it 'Should return an empty list when no tasks are added' do
      todo_1 = TodoTracker.new("Aprils tasks")
      todo_1.add("")
      expect(todo_1.list).to eq []
    end
  end

  context 'multiple tasks added to new todo list' do
    it 'Should return a list of tasks after multiple adds called.' do
      todo_1 = TodoTracker.new("Aprils tasks")
      todo_1.add("Buy a new knuckleduster")
      todo_1.add("Polish said knuckleduster")
      todo_1.add("Update my ipod")
      expect(todo_1.list).to eq ["Buy a new knuckleduster", "Polish said knuckleduster", "Update my ipod"]
    end

    it 'Should return a shortened list when mark_as_complete has been called' do
      todo_1 = TodoTracker.new("Aprils tasks")
      todo_1.add("Buy a new knuckleduster")
      todo_1.add("Polish said knuckleduster")
      todo_1.add("Update my ipod")
      todo_1.mark_as_complete("Polish said knuckleduster")
      expect(todo_1.list).to eq ["Buy a new knuckleduster", "Update my ipod"]
    end
  end

  context 'Multiple tasks added and removed' do
    it 'Should return a list as expected after multiple adds followed by multiple completes and vice versa' do
      todo_1 = TodoTracker.new("Aprils tasks")
      todo_1.add("")
      todo_1.add("Buy a new knuckleduster")
      todo_1.add("Polish said knuckleduster")
      todo_1.add("Update my ipod")
      todo_1.add("")
      todo_1.add("Plant a cherry tree in the garden")
      todo_1.add("Feed the peregrine falcon")
      todo_1.mark_as_complete("Update my ipod")
      todo_1.add("Complete my short novella")
      todo_1.mark_as_complete("Buy a new knuckleduster")
      todo_1.add("Make a batch of brownies")
      expect(todo_1.list).to eq ["Polish said knuckleduster", "Plant a cherry tree in the garden", "Feed the peregrine falcon", "Complete my short novella", "Make a batch of brownies"]
    end
  end

  context 'failures' do
    it 'Should return a fail message if task to add is not a string' do
      todo_1 = TodoTracker.new("Aprils tasks")
      expect { todo_1.add(nil) }.to raise_error "This is not a valid input"
      expect { todo_1.add(14) }.to raise_error "This is not a valid input"
      expect { todo_1.add([]) }.to raise_error "This is not a valid input"
    end

    it 'Should return a fail message when task to be completed does not exist' do
      todo_1 = TodoTracker.new("Aprils tasks")
      todo_1.add("Buy a new knuckleduster")
      todo_1.add("Polish said knuckleduster")
      todo_1.add("Update my ipod")
      todo_1.add("Plant a cherry tree in the garden")
      todo_1.add("Feed the peregrine falcon")
      expect { todo_1.mark_as_complete("F33D Th3 P3regrine Falcon!") }.to raise_error "This task does not exist therefore cannot be completed"
      expect { todo_1.mark_as_complete("Not even a present task") }.to raise_error "This task does not exist therefore cannot be completed"
    end
  end
end