require 'track'

describe Track do 
  context 'matches method functionality' do
    it 'Should return true when title or artist matches keyword' do
      track_1 = Track.new("track", "artist")
      expect(track_1.matches?("track")).to eq true
    end
  end
end