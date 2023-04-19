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
  context 'acceptable time frame passed' do
    it 'Should return the string/entry with the length closest to given time' do
      entry_1 = DiaryEntry.new("April", "Started at makers academy")
      entry_2 = DiaryEntry.new("May", "Spent a lot of time crying")
      entry_3 = DiaryEntry.new("June", "Ran away")
      entry_4 = DiaryEntry.new("July", "got a hold of this here secret phone number 07866117788")
      diary_1 = Diary.new
      diary_1.add_entry(entry_1)
      diary_1.add_entry(entry_2)
      diary_1.add_entry(entry_3)
      expect(diary_1.select_entry_by_timeframe(1, 3)).to eq "Ran away"
    end
  end
end

describe 'Search_for_phone_numbers' do
  context 'multiple phone numbers included within ' do
    it 'Should return a list of all phone numbers within all diary entries' do
      entry_1 = DiaryEntry.new("July", "got a hold of this here secret phone number 07866117788")
      entry_2 = DiaryEntry.new("June", "I had to change my number to 01202456774 which I am not pleased about")
      entry_3 = DiaryEntry.new("May", "07866554466 is Marks new number")
      entry_4 = DiaryEntry.new("test", "0120234 012026 07845645645 66667778899009373 087665 01202315415")
      entry_5 = DiaryEntry.new("test2", "17 times I have tried to m3m0riz3 th15 number 01202526135 and 1 still cannot remember is 3476")
      entry_6 = DiaryEntry.new("test3", "my new number is:07800112211!")
      diary_1 = Diary.new
      diary_1.add_entry(entry_1)
      diary_1.add_entry(entry_2)
      diary_1.add_entry(entry_3)
      diary_1.add_entry(entry_4)
      diary_1.add_entry(entry_5)
      expect(diary_1.search_for_phone_numbers).to eq ["07866117788", "01202456774", "07866554466", "07845645645", "01202315415", "01202526135"]
    end
  end
end