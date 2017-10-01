require_relative 'exercise01'

class TodoList < Task

  @@tasks = []

  def initialize
    super
  end

  def self.add_task(description, due_date)
    new_task = Task.new(description, due_date)
    @@tasks << new_task
    new_task
  end

  def self.tasks
    @@tasks
  end

end


TodoList.add_task("Go Running", "Tuesday at 5:30 am")
TodoList.add_task("Call my mother", "Tomorrow")
TodoList.add_task("Return the book", "Monday, October 02")
TodoList.add_task("Do homework", "Today at 6 pm")

p TodoList.tasks
