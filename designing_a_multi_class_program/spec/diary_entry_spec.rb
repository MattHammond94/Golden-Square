require 'diary_entry'

describe DiaryEntry do
  context 'title and contents methods' do
    it 'Should return the given title and contents as strings' do
      entry_1 = DiaryEntry.new("Yes", "one two three four")
      entry_2 = DiaryEntry.new("Second", "This is the second test")
      entry_3 = DiaryEntry.new("Another one", "DJ Khaled")
      entry_1.title => "Yes"
      expect(entry_2.contents).to eq "This is the second test"
      # entry_3.contets => "DJ Khaled"
      # entry_3.title => "Another one"
    end
  end
end