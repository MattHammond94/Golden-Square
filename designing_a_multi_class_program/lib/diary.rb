class Diary
  def initialize 
    @diary_entries = []
    @tasks = []
  end

  def add_entry(entry)
  # takes an instance of Entry and adds it to selected array
  end

  def show_all_diary_entries
    # returns arr of all added diary entries
  end

  def show_all_todos
    # returns an arr of all tasks todo
  end

  def select_entry_by_time(wpm, minutes)
    # returns an entry that can be read within passed reading time
  end

  def search_for_phone_numbers
    # holds a variable defining what a mobile number is
    # searched and returns an arr of all mobile numbers from diary_entries arr
  end
end