require 'music_library'
require 'track'

describe 'integration' do
  context 'search' do
    it 'Should return one track when only one track contains search keyword' do
      library = MusicLibrary.new
      track_1 = double(:track, matches?: true)
      track_2 = double(:track, matches?: false)
      library.add(track_1)
      library.add(track_2)
      expect(library.search("Glue")).to eq [track_1]
    end

    it 'Should return an empty list when no tracks contain search keyword' do
      library = MusicLibrary.new
      track_1 = double(:track, matches?: false)
      track_2 = double(:track, matches?: false)
      track_3 = double(:track, matches?: false)
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search("Glue")).to eq []
    end

    it 'Should return a list of multiples when multiple tracks contain keyword' do
      library = MusicLibrary.new
      track_1 = double(:track, matches?: true)
      track_2 = double(:track, matches?: true)
      track_3 = double(:track, matches?: true)
      library.add(track_1)
      library.add(track_2)
      library.add(track_3)
      expect(library.search("Glue")).to eq [track_1, track_2, track_3]
    end
  end
end