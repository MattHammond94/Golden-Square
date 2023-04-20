require 'music_library'
require 'track'

describe 'integration' do
  context 'search' do
    it 'Should ' do
      library = MusicLibrary.new
      track_1 = double(:track, matches?: true)
      track_2 = double(:track, matches?: false)
      library.add(track_1)
      library.add(track_2)
      expect(library.search("Glue")).to eq [track_1]
    end
  end
end