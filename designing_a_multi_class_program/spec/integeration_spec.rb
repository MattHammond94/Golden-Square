require 'diary'
require 'todo_entry'
require 'diary_entry'

describe 'show_all' do
  context 'multiple of each classes added' do
    it 'Should return a list only of the diary entries when show diaries method is called' do
      entry_1 = DiaryEntry.new("April", "Started at makers academy")
      entry_2 = TodoEntry.new("April", "Buy new fridge")
      entry_3 = DiaryEntry.new("May", "Spent a lot of time crying")
      entry_4 = DiaryEntry.new("June", "Ran away")
      entry_5 = DiaryEntry.new("July", "got a hold of this here secret phone number 07866117788")
      entry_6 = TodoEntry.new("July", "Walk the peregrine falcon")
      diary_1 = Diary.new
      diary_1.add_entry(entry_1)
      diary_1.add_entry(entry_2)
      diary_1.add_entry(entry_3)
      diary_1.add_entry(entry_4)
      diary_1.add_entry(entry_5)
      diary_1.add_entry(entry_6)
      expect(diary_1.show_all_diary_entries).to eq ["Started at makers academy", "Spent a lot of time crying", "Ran away", "got a hold of this here secret phone number 07866117788"]
    end

    it 'Should return a list of only the todos when show all todos is called' do
      entry_1 = DiaryEntry.new("April", "Started at makers academy")
      entry_2 = TodoEntry.new("April", "Buy new fridge")
      entry_3 = DiaryEntry.new("May", "Spent a lot of time crying")
      entry_4 = DiaryEntry.new("June", "Ran away")
      entry_5 = DiaryEntry.new("July", "got a hold of this here secret phone number 07866117788")
      entry_6 = TodoEntry.new("July", "Walk the peregrine falcon")
      diary_1 = Diary.new
      diary_1.add_entry(entry_1)
      diary_1.add_entry(entry_2)
      diary_1.add_entry(entry_3)
      diary_1.add_entry(entry_4)
      diary_1.add_entry(entry_5)
      diary_1.add_entry(entry_6)
      expect(diary_1.show_all_todos).to eq ["Buy new fridge", "Walk the peregrine falcon"]
    end
  end
end

describe 'select_entry_by_timeframe' do
  context '' do
    it 'Should' do
      
    end
  end
end