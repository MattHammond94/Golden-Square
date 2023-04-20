require 'music_library'

describe MusicLibrary do
  context '' do
    it 'Should' do
      library_1 = MusicLibrary.new
      fake_track = FakeTrack.new
      library_1.add(fake_track)
      expect(library_1.all).to eq [fake_track]
    end
  end
end

class FakeTrack

end