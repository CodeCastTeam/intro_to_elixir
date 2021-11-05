# - We bundle functions within modules in Elixir
# - Modules follow CamelCase naming convention: no spaces, capitalize first letter of every word
defmodule MyFunctions do

  # function use snake_case naming convention: lower case all words, replace spaces with _
  # You can omit brackets in function definitions if the function takes no arguments
  # greet_me/0 (takes no arguments)
  def greet_me do
    # Function return the value in the function
    "Hello there!"
  end

  # greet_me/1 expects one argument
  def greet_me(name) do
    "Hello #{name}"
  end

end

# To execute the function, you type the module name followed by `.` then the function name you want to call
IO.puts MyFunctions.greet_me()
