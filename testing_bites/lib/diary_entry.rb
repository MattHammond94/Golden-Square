class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @furthest_word_read = 0
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
    no_words_we_can_read = wpm * minutes
    start_from = @furthest_word_read
    end_at = @furthest_word_read + no_words_we_can_read
    @furthest_word_read = no_words_we_can_read
    word_list = words[start_from, end_at]
    if end_at >= count_words
      @furthest_word_read = 0
    else
      @furthest_word_read = end_at
    end
    return word_list.join(" ")
  end

  private 

  def words 
    @contents.split(" ")
  end
end

# -------------------------------------------------
# def reading_chunk(wpm, minutes)
  #   amount = (wpm * minutes)
  #   words = []

  #   until @read_point >= self.count_words do
  #     words << @contents.split(" ")[@read_point..(@read_point + amount - 1)]
  #     @read_point += amount
  #   end
  #   @read_point >= self.count_words ? @read_point = 0 : @read_point += amount
  #   words.join(" ")
  # end

  # The comments above showcase my method approach before I resorted to following Kay's solution