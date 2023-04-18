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
    @amount_can_read = wpm * minutes
    @entries.find { |entry| entry.count_words == selected_length }.title
  end

  private 
  
  def selected_length
    count_words.select { |num| num <= @amount_can_read }.max
  end
end