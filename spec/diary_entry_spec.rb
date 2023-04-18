require 'diary_entry'

describe DiaryEntry do
  context 'reading time' do
    it 'Should return an integer ' do
      diary_entry_1 = DiaryEntry.new("April", "threw a little party")
      diary_entry_2 = DiaryEntry.new("May", "went to get my car washed")
      expect(diary_entry_2.reading_time(2)).to eq 3
    end
  end
end