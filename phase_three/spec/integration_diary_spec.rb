require 'secret_diary'
require 'diary'

describe 'integration' do
  it 'Should not read the diary because it is locked' do
    diary = Diary.new("contents of this diary are secret")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end
end