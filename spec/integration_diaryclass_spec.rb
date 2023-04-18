require 'diary'
require 'diary_entry'

describe 'Integration' do 
  context 'builds a list of all diary entries' do
    it 'Should return a list of all diary entry objects after multiple diary entries have been created' do
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

  context 'returns a list of word counts' do
    it 'Should return a list of word counts for each entry after multiple diary entries have been created' do
      diary_1 = Diary.new
      entry_1 = DiaryEntry.new("April", "Went to the shop")
      entry_2 = DiaryEntry.new("May", "Went to the shops again nothing major")
      entry_3 = DiaryEntry.new("June", "Went to the beach, the shops were closed")
      diary_1.add(entry_1)
      diary_1.add(entry_2)
      diary_1.add(entry_3)
      expect(diary_1.count_words).to eq [4, 7, 8]
    end
  end


  context 'reading time after multiple diary entries added' do
    it 'Should return a single integer representing the total amount of time taken to read all diary entries' do
      diary_1 = Diary.new
      entry_1 = DiaryEntry.new("April", "Went to the shop")
      entry_2 = DiaryEntry.new("May", "Went to the shops again nothing major")
      entry_3 = DiaryEntry.new("June", "Went to the beach, the shops were closed")
      diary_1.add(entry_1)
      diary_1.add(entry_2)
      diary_1.add(entry_3)
      expect(diary_1.reading_time(1)).to eq 19
    end
  end
end