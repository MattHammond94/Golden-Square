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
    fail "neither wpm or minutes can be below 0" unless wpm > 0 || minutes > 0
    readable_entries = @entries.filter { |entry| entry.reading_time(wpm) <= minutes }
    sorted_by_longest = readable_entries.sort_by { |entry| entry.count_words }
    sorted_by_longest.last
  end
  # ----------------------------------------
  # Below showcases my method before resorting to following Kays solution.

  # def find_best_entry_for_reading_time(wpm, minutes)
  #   @amount_can_read = wpm * minutes
  #   fail "neither wpm or minutes can be below 0" unless @amount_can_read > 0
  #   readable_entries = @entries.filter { |entry| entry.reading_time(wpm) <= minutes }
  #   readable_entries.last
  #   return @entries.find { |entry| entry.count_words == selected_length }
  # end

  # private 
  
  # def selected_length
  #   count_words.select { |num| num < @amount_can_read }
  # end

  # def minimum_length
  #   count_words.select_by(&:min)
  # end
end