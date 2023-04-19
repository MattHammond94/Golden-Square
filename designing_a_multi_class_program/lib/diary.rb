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
    # returns an entry that can be read within passed reading time
  end

  def search_for_phone_numbers
    # holds a variable defining what a mobile number is
    # searched and returns an arr of all mobile numbers from diary_entries arr
  end
end