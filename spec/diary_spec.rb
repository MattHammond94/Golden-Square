require 'diary'

describe Diary do
  context 'builds a list of all entries' do
    it 'Should return a list of entries after multiple diary entries have been created' do
      diary_1 = Diary.new
      entry_1 = DiaryEntry.new("April", "Went to the shop")
      entry_2 = DiaryEntry.new("May", "Went to the shops again nothing major")
      entry_3 = DiaryEntry.new("June", "Went to the beach, the shops were closed")
      diary_1.add(entry_1)
      diary_1.add(entry_2)
      diary_1.add(entry_3)
      expect(diary_1.all).to eq [entry_1, entry_2, entry_3]
    end
  end
end