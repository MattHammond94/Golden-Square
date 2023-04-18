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
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    # I have skipped this method for now as this method has been completed in a 
    # different exercise and I had to revert to Kay's solution in order to solve it. 
  end
end