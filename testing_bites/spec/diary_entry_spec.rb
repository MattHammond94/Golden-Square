require 'diary_entry'

describe DiaryEntry do
  it 'Should return the given title as a string when title is called' do
    diary_1 = DiaryEntry.new("September", "I visited captain beefheart in Antwerp")
    diary_2 = DiaryEntry.new("October", "Beefheart left me broken hearted")
    expect(diary_1.title).to eq "September"
    expect(diary_2.title).to eq "October"
    expect(diary_1.contents).to eq "I visited captain beefheart in Antwerp"
    expect(diary_2.contents).to eq "Beefheart left me broken hearted"
  end

  it 'Should return the amount of words in contents as an integer' do
    diary = DiaryEntry.new("March", "I began to pen letters to captain beefheart of Belgium")
    expect(diary.count_words).to eq 10
  end

  it 'Should return an integer representing the amount of minutes taken to read ' do
    diary = DiaryEntry.new("April", "I became enfatuated by the beef")
    expect(diary.reading_time(2)).to eq 3
  end
end