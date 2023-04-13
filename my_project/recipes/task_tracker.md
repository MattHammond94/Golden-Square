## 1. Describe the Problem
As a user 
So that I can keep track of my tasks
I want to check if a text includes the string #TODO

## 2. Method Signature 
Ruby 
* todo_locator(arr_of_texts)
* takes an array of different texts(strings)
* returns an array of only the strings which contain #TODO in them

Alternative approach:
Ruby 
* task_confirmer(text)
* takes a single piece of text(string)
* returns a boolean(true or false) if string contains #TODO
* (Can also take an array of strings and return an array of booleans)

Potential side effects:
As per my two different approach options I am clearly unsure about exactly what the user wants me to do. This would need to be clarified to ensure the best approach is taken. Using an array of texts would allow to pass multiple texts at once however from the brief it explains that "I want to check if 'A' text" which implies a single string passed one by one.

Does the user want to account for punctuation and combined strings also? Or just isolated #TODO's <<< Unlike this one.
Does the user want the program to be case sensitive?

## 3. Examples
* task_tracker("#TODO")
* task_tracker("#TODO walk the dog") => true
* task_tracker("Check the weather in Pompei #TODO") => true
* task_tracker("Buy plenty of #TODO caserole dishes for saturday") => true
* task_tracker("#TODO: walk the honeybadger") => true
* task_tracker("I cannot handle all of these #TODO'sthatIhave!!") => true
* task_tracker("#todo") => false
* task_tracker("#ToD") => false
* task_tracker("") => false
* task_tracker("   ") => false
* task_tracker(nil) => error

## 4. Implement Behaviour
_Follow test drive apparoch(Red, green, refactor) to implement behaviour_