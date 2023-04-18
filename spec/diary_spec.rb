require 'diary'

describe Diary do
  context 'builds a list of all entries' do
    it 'Should return a list of entries after multiple diary adds have been called' do
      diary_1 = Diary.new
      diary_1.add("Random entry")
      diary_1.add("Random entry the second yes")
      expect(diary_1.all).to eq ["Random entry", "Random entry the second yes"]
    end
  end
end