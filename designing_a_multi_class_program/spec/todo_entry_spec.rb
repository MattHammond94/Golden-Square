require 'todo_entry'

describe TodoEntry do
  context 'initializing new entry' do
    it 'Should mimic the functionality of the DiaryEntry class' do
      entry_1 = TodoEntry.new("Today", "Go get milk")
      entry_2 = TodoEntry.new("Saturday", "Walk the pangolin")
      entry_3 = TodoEntry.new("March", "clean the tank")
      expect(entry_1.title).to eq "Today"
      expect(entry_2.contents).to eq "Walk the pangolin"
      expect(entry_1.contents).to eq "Go get milk"
      expect(entry_3.title).to eq "March"
    end
  end
end