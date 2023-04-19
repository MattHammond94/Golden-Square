class Diary
  def initialize 
    @diary_entries = []
    @tasks = []
  end

  def add_entry(entry)
    if entry.instance_of?(DiaryEntry)
      @diary_entries << entry.contents
    elsif entry.instance_of?(TodoEntry)
      @tasks << entry.contents
    end
  end

  def show_all_diary_entries
    @diary_entries
  end

  def show_all_todos
    @tasks
  end

  def select_entry_by_timeframe(wpm, minutes)
    amount_can_read = wpm * minutes
    
  end

  def search_for_phone_numbers
    array_of_all_words_in_diaries.select { |string| string.match?(/^\d{11}$/) }
  end

  private 

  def array_of_all_words_in_diaries
    @diary_entries.map { |string| string.split(" ") }.flatten
  end
end