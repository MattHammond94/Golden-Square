require 'music_library'

describe MusicLibrary do
  context '' do
    it 'Should' do
      library_1 = MusicLibrary.new
      fake_track = FakeTrack.new
      fake_track_2 = FakeTrack.new
      library_1.add(fake_track)
      library_1.add(fake_track_2)
      expect(library_1.all).to eq [fake_track, fake_track_2]
    end
  end
end

class FakeTrack

end