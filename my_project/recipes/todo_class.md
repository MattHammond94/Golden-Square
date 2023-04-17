## 1. Describe the problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Class Interface

``` Ruby

class TodoTracker
  def initialize 
    # @title
    # @list
    # @complete?
  end

  def add(task)
    # adds todo to task list
  end

  def list 
    # Shows a list of all todos/tasks
  end

  def mark_as_complete(task)
    # sets task as complete and removes from list.
  end
end

```

Initialize method needs to take a todo(title) as a string. => "This weeks tasks"
Also needs an empty array to be used by the add method to create a list of all todo's. => []
Can also include a completed variable which is set to a boolean value of false. => "task = false"

Add method takes a string(the task) and pushes it into the array within the initialize method

List method returns the array of all tasks within list array

## 3. Examples

task_1 = todo.new("This weeks tasks")
task_1.add("Make sure to get Milk, Eggs, Cabbage, Crayons")
task_1.list => ["Make sure to get Milk, Eggs, Cabbage, Crayons"]
task_1 = todo.add("Walk the honeybadger")
task_1.list => ["Make sure to get Milk, Eggs, Cabbage, Crayons", "Walk the honeybadger"]



## 4. Implement Behaviour
 _Follow test drive apparoch(Red, green, refactor) to implement behaviour_