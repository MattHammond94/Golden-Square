class Diary
  def initialize
    @entries = []
    @amount_can_read = 0
  end

  def add(entry) 
    @entries << entry
  end

  def all
    @entries
  end

  def count_words
    @entries.map { |entry| entry.count_words }
  end

  def reading_time(wpm)
    @entries.sum { |entry| entry.reading_time(wpm) }
  end

  def find_best_entry_for_reading_time(wpm, minutes)
        # `wpm` is an integer representing the number of words the user can read
        # per minute.
        # `minutes` is an integer representing the number of minutes the user
        # has to read.
    # Returns an instance of diary entry representing the entry that is closest 
    # to, but not over, the length that the user could read in the minutes they
    # have available given their reading speed.

    @amount_can_read += wpm * minutes
    @entries.map { |entry| entry.count_words == selected_length ? entry.title : nil }
  end

  private 
  
  def selected_length
    count_words.select { |num| num <= @amount_can_read }.max
  end
end