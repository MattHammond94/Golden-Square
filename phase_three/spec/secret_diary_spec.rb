require 'secret_diary'

describe SecretDiary do
  context 'locks' do
    it 'Should return go away when read is called after first initialize' do
      diary = double :diary, contents: "First secret entry added"
      secret_entry_1 = SecretDiary.new(diary)
      expect { secret_entry_1.read }.to raise_error "Go away!"
    end

    it 'Should return the value of contents on diary after unlock has been called' do
      diary = double :diary, contents: "First secret entry added"
      secret_entry_1 = SecretDiary.new(diary)
      secret_entry_1.unlock
      expect(secret_entry_1.read).to eq "First secret entry added"
    end
    
    it 'Should return contents after multiple unlocks called' do
      diary = double :diary, contents: "First secret entry added"
      secret_entry_1 = SecretDiary.new(diary)
      secret_entry_1.lock
      secret_entry_1.unlock
      secret_entry_1.lock
      secret_entry_1.unlock
      expect(secret_entry_1.read).to eq "First secret entry added"
    end
  end
end

describe SecretDiary do
  it 'can take a diary instance as an arg when being initialized' do
    diary = double :diary, contents: "This is another secret very secret entry"
    secret_entry_1 = SecretDiary.new(diary)
    secret_entry_1.unlock
    expect(secret_entry_1.read).to eq "This is another secret very secret entry"
  end
end