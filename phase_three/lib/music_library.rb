class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) 
    @library << track
  end

  def all
    @library
  end
  
  def search(keyword)
    @library.select { |track| track.matches? }
  end
end