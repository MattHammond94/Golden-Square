require 'secret_diary'
require 'diary'

describe 'integration' do
  it 'Should not read the diary when locked' do
    diary = Diary.new("contents of this diary are secret")
    secret_diary = SecretDiary.new(diary)
    expect { secret_diary.read }.to raise_error "Go away!"
  end

  it 'Should read diary entry when unlocked' do
    diary = Diary.new("contents of this diary are secret")
    secret_diary = SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq "contents of this diary are secret"
  end
end