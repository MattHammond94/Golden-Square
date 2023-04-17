class MusicTracker 
  def initialize
    @library = []
  end

  def add(track)
    fail "Invalid input type" unless track.is_a?(String)
    track.empty? ? nil : @library << track
  end

  def list
    @library
  end
end