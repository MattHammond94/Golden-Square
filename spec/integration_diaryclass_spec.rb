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
      expect(diary_1.reading_time(2)).to eq 10
      expect(diary_1.reading_time(5)).to eq 5
    end

    it 'Should return an error message when the wpm is less than 0' do
      diary_1 = Diary.new
      entry_1 = DiaryEntry.new("April", "Went to the shop")
      diary_1.add(entry_1)
      expect { diary_1.reading_time(0) }.to raise_error "Words per minute must be more than 0"
    end
  end

  context 'find_best_entry_for_reading_time' do
    it 'Should return the instance that contains the closest length contents to what the user can read' do
      diary_1 = Diary.new
      entry_1 = DiaryEntry.new("April", "Went to the shop")
      entry_2 = DiaryEntry.new("May", "Went to the shops again nothing major")
      entry_3 = DiaryEntry.new("June", "Went to the beach, the shops were closed")
      entry_4 = DiaryEntry.new("July", "July has the longest story written in the diary simply because it makes it more applicable for our testy here")
      entry_5 = DiaryEntry.new("August", "Yes it is")
      diary_1.add(entry_1)
      diary_1.add(entry_2)
      diary_1.add(entry_3)
      diary_1.add(entry_4)
      diary_1.add(entry_5)
      expect(diary_1.find_best_entry_for_reading_time(5, 3)).to eq entry_3
      expect(diary_1.find_best_entry_for_reading_time(10, 2)).to eq entry_4
      expect(diary_1.find_best_entry_for_reading_time(2, 2)).to eq entry_1
      expect(diary_1.find_best_entry_for_reading_time(1, 3)).to eq entry_5
    end

    it 'Should return nil when no entries are added to diary' do
      diary_1 = Diary.new
      expect(diary_1.find_best_entry_for_reading_time(5, 3)).to eq nil
    end
  end
  
  context 'best entry for reading fail' do
    it 'Should return a error message when either values passed are below zero' do
      diary_1 = Diary.new
      entry_1 = DiaryEntry.new("May", "Went to the shops again nothing major")
      diary_1.add(entry_1)
      expect { diary_1.find_best_entry_for_reading_time(0, 0) }.to raise_error "neither wpm or minutes can be below 0"
    end
  end
end