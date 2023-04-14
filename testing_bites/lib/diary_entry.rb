class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split(" ").count
  end

  def reading_time(wpm)
    self.count_words / wpm
  end

  def reading_chunk(wpm, minutes)
    amount = (wpm * minutes)
    self.contents.split(" ")[0..(amount - 1)].join(" ")
  end
end