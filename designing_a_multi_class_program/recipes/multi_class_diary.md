## 1. Describe the Problem
> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the Class System

_class Diary_
* Creates diary entries (Takes instances from entry creator class)
* Keeps a list of these entries and returns them all when _read_entries_ is called (array of strings)
* returns only readble entries when time method is called (This method will take two integers)
* searches through all entries and returns an arr of phonenumbers from within entries(regex required to define a suitable number)

_class EntryCreators_
* includes methods for creating entries
* Takes strings for both todo and diary entry 
* returns the title/entry when called

```ruby
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

class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
  #  returns title of this entry
  end

  def contents
    # returns contents
  end
end

class TodoEntry
  def initialize(title, todo)
    @title = title
    @todo = todo
  end

  def title
    # returns title of this todo
  end

  def todo
    # returns todo
  end
  # ^^^ These two methods may be able to be called from the DiaryEntry class (will write a test for this)
  # todo would need to change to contents in order for this to work
end

```

## 3. Create Examples as Integration Tests
```ruby

# Core functionality tests for each method:

entry_1 = DiaryEntry.new("April", "Started at makers academy")
entry_2 = DiaryEntry.new("May", "Spent a lot of time crying")
entry_3 = DiaryEntry.new("June", "Ran away")
entry_4 = DiaryEntry.new("July", "got a hold of this here secret phone number 07866117788")
diary_1 = Diary.new
diary_1.add_entry(entry_1)
diary_1.add_entry(entry_2)
diary_1.add_entry(entry_3)

diary_1.show_all_diary_entries => ["Started at makers academy", "Spent a lot of time crying", "Ran away", "got a hold of this here secret phone number 07866117788"]
diary_1.show_all_todos => []
diary_1.select_entry_by_time(1, 3) => "Started at makers academy"
diary_1.search_for_phone_numbers => ["07866117788"]


# When both todos and diary entries are added: 

entry_1 = DiaryEntry.new("April", "Started at makers academy")
entry_2 = TodoEntry.new("April", "Buy new fridge")
entry_3 = DiaryEntry.new("May", "Spent a lot of time crying")
entry_4 = DiaryEntry.new("June", "Ran away")
entry_5 = DiaryEntry.new("July", "got a hold of this here secret phone number 07866117788")
entry_6 = TodoEntry.new("July", "Walk the peregrine falcon")
diary_1 = Diary.new
diary_1.add_entry(entry_1)
diary_1.add_entry(entry_2)
diary_1.add_entry(entry_3)
diary_1.add_entry(entry_4)
diary_1.add_entry(entry_5)
diary_1.add_entry(entry_6)

diary_1.show_all_diary_entries => ["Started at makers academy", "Spent a lot of time crying", "Ran away", "got a hold of this here secret phone number 07866117788"]
diary_1.show_all_todos => ["Walk the peregrine falcon", "Buy new fridge"]

# Fail tests:

# No entries added:
diary_1 = Diary.new
diary_1.add_entry(entry_1) => "No such entry exists"
diary_1.add_entry(entry_2) => "No such entry exists"

# Either values passed to by time method equal to zero
entry_1 = DiaryEntry.new("April", "Started at makers academy")
entry_2 = TodoEntry.new("April", "Buy new fridge")
diary_1 = Diary.new
diary_1.add_entry(entry_1)
diary_1.add_entry(entry_2)
diary_1.select_entry_by_time(1, 0) => "Error"
diary_1.select_entry_by_time(0, 3) => "Error"

```

## 4. Create Examples as Unit Tests
```ruby
# Testing diary entry can create entries and these entries return their correct contents/title:

entry_1 = DiaryEntry.new("Yes", "one two three four")
entry_2 = DiaryEntry.new("Second", "This is the second test")
entry_3 = DiaryEntry.new("Another one", "DJ Khaled")
entry_1.title => "Yes"
entry_2.contents => "This is the second test"
entry_3.contets => "DJ Khaled"
entry_3.title => "Another one"

# Fail tests - Empty/invalid Strings
entry_1 = DiaryEntry.new("", "") => "Both inputs must be valid in order to create a new entry"
entry_2 = DiaryEntry.new(nil, "One two three") => "Both inputs must be valid in order to create a new entry"
entry_3 = DiaryEntry.new("April", "") => "Both inputs must be valid in order to create a new entry"
entry_4 = DiaryEntry.new("June", 12) => "Both inputs must be valid in order to create a new entry"

# checking inheritence works on TodoEntry class

entry_1 = TodoEntry.new("Today" "Walk the badger")
entry_1.title => "Today"
entry_1.contents => "Walk the badger"

# Same fail tests for TodoEntry class provided previous test passes

```

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour_