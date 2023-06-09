require 'music_library'

describe MusicLibrary do
  context 'multiple tracks added' do
    it 'Should return all instances of track when all method is called after multiple adds' do
      library_1 = MusicLibrary.new
      fake_track = FakeTrack.new
      fake_track_2 = FakeTrack.new
      library_1.add(fake_track)
      library_1.add(fake_track_2)
      expect(library_1.all).to eq [fake_track, fake_track_2]
    end
  end

  context 'search method after multiple adds' do
    it 'Should only return a list of items which match the selected keyword' do
      library_1 = MusicLibrary.new
      fake_track_2 = double :track, matches?: false
      fake_track_3 = double :track, matches?: true
      library_1.add(fake_track_2)
      library_1.add(fake_track_3)
      expect(library_1.search("Sandwich")).to eq [fake_track_3]
    end
  end
end

class FakeTrack
end