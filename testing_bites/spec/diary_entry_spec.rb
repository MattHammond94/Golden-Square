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

  it 'Should return an integer representing the amount of minutes taken to read contents' do
    diary = DiaryEntry.new("April", "I became enfatuated by the beef")
    expect(diary.reading_time(1)).to eq 6
    expect(diary.reading_time(2)).to eq 3
    expect(diary.reading_time(6)).to eq 1
  end

  describe "reading_chunk" do
    context 'With a text readable within the given minutes' do
      it 'Returns the full text' do 
        diary_entry = DiaryEntry.new("title", "One two three")
        chunk = diary_entry.reading_chunk(200, 1)
        expect(chunk).to eq "One two three"
      end
    end

    context 'with a contents unreadable within the time' do
      it 'returns a readable chunk' do
        diary_entry = DiaryEntry.new("title", "One two three")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "One two"
      end

      it 'returns the next chunk, next time it is called' do
        diary_entry = DiaryEntry.new("title", "One two three")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "three"
      end

      it 'restarts after reading the whole contents' do
        diary_entry = DiaryEntry.new("title", "One two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "One two"
      end

      it 'Restarts if it finishes exactly on the end' do
        diary_entry = DiaryEntry.new("title", "One two three")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(1, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "One two"
      end
    end 
  end
end