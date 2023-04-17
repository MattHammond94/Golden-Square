## 1. Describe the Problem
As a user
So that I can keep track of my music listening
I want to add tracks I've listened to and see a list of them.

## 2. Class Interface
``` ruby
class MusicTracker
  def initialize 
    # Holds a library of all tracks listened to
  end

  def add(track)
    # adds a track to library
  end

  def list
    # displays entire library
  end
end

```
* initialize method holds an empty array which will be added to as entire music library.
* add takes tracks as a string and pushes tracks to the library array
* list returns the array (I prefer to puts the array as it looks better however makes writing tests longer)
* potential issues: how would the user pefer to input a song? Do they want the song to showcase both artist and track? This could require taking two strings or a single hash

## 3. Examples
```ruby 
# 1. Test the list method to ensure it returns entire added library
lib_1 = MusicTracker.new
lib_1.add("James Blunt - You're Beautiful")
lib_1.add("Sex Pistols - No Fun")
lib_1.list => ["James Blunt - You're Beautiful", "Sex Pistols - No Fun"]

# 2. Test that list will return an empty array when no tracks are added to library
lib_1 = MusicTracker.new
lib_1.add("")
lib_1.list => []

# 3. Ensure an error is returned when add is passed a non String data type
lib_1 = MusicTracker.new
lib_1.add(nil) => "Error"
```
## 4. Implement Behaviour
 _Follow test drive apparoch(Red, green, refactor) to implement behaviour_