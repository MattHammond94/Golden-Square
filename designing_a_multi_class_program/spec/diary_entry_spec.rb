require 'diary_entry'

describe DiaryEntry do
  context 'title and contents methods' do
    it 'Should return the given title and contents as strings' do
      entry_1 = DiaryEntry.new("Yes", "one two three four")
      entry_2 = DiaryEntry.new("Second", "This is the second test")
      entry_3 = DiaryEntry.new("Another one", "DJ Khaled")
      entry_1.title => "Yes"
      expect(entry_2.contents).to eq "This is the second test"
      expect(entry_3.contents).to eq "DJ Khaled"
      expect(entry_3.title).to eq "Another one"
    end
  end

  context 'Failures' do
    it 'Should return an error message when DiaryEntry is initialized without string values' do
      expect { entry_2 = DiaryEntry.new(nil, "One two three") }.to raise_error "Both inputs must be valid in order to create a new entry"
      expect { entry_3 = DiaryEntry.new("April", []) }.to raise_error "Both inputs must be valid in order to create a new entry"
      expect { entry_4 = DiaryEntry.new("June", 12) }.to raise_error "Both inputs must be valid in order to create a new entry"
    end

    it 'Should return an error message when DiaryEntry is initialized with empty strings' do
      expect { entry_1 = DiaryEntry.new("", "") }.to raise_error "One of your inputs is empty - Please try again"
      expect { entry_5 = DiaryEntry.new("June", "") }.to raise_error "One of your inputs is empty - Please try again"
      expect { entry_5 = DiaryEntry.new("", "one two three") }.to raise_error "One of your inputs is empty - Please try again"
    end
  end
end