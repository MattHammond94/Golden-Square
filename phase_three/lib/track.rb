class Track
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def matches?(keyword) 
    @title = keyword || @artists = keyword ? true : false
  end
end