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
    @library.map { |string| string.matches? }
  end
end