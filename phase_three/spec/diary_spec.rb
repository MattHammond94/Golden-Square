require 'diary'

describe Diary do
  context 'read method' do
    it 'returns the contents of a given diary entry' do
      diary_1 = Diary.new("This is a secret entry")
      expect(diary_1.read).to eq "This is a secret entry"
    end
  end
end