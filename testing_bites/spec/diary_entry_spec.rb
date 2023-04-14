require 'diary_entry'

describe DiaryEntry do
  it 'Should return the given title as a string when title is called' do
    diary_1 = DiaryEntry.new("September", "I visited captain beefheart")
    expect(diary_1.title).to eq "September"
  end
end