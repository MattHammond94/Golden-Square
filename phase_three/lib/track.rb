class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword) 
    @title == keyword || @artist == keyword ? true : false
  end
end