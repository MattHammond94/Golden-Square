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

  context 'Failures' do
    it 'Should return an error message when TodoEntry is initialized without string values' do
      expect { entry_2 = TodoEntry.new(nil, "One two three") }.to raise_error "Both inputs must be valid in order to create a new entry"
      expect { entry_3 = TodoEntry.new("April", []) }.to raise_error "Both inputs must be valid in order to create a new entry"
      expect { entry_4 = TodoEntry.new("June", 12) }.to raise_error "Both inputs must be valid in order to create a new entry"
    end

    it 'Should return an error message when TodoEntry is initialized with empty strings' do
      expect { entry_1 = TodoEntry.new("", "") }.to raise_error "One of your inputs is empty - Please try again"
      expect { entry_5 = TodoEntry.new("June", "") }.to raise_error "One of your inputs is empty - Please try again"
      expect { entry_5 = TodoEntry.new("", "one two three") }.to raise_error "One of your inputs is empty - Please try again"
    end
  end
end