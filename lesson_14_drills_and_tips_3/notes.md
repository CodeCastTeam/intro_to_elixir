# Lesson 14 - Drills and Tips - Part 3

Let's solve this question: Write a piece of code that finds the most recurring letter in a given string.


## Solution

```elixir
defmodule StringHelpers do

  def most_recurring_letter(string) do
    result = string
             |> String.downcase()
             |> String.replace(" ","")
             |> String.split("") # returns a list
             |> Enum.reject(&(&1 == ""))
             |> Enum.reduce(%{}, fn char, acc ->
               Map.put(acc, char, (acc[char] || 0) + 1)
             end) # returns a map
             |> Enum.max_by(fn {_k, v} -> v end) # Returns a tuple
    
    "The most recurring letter is #{elem(result, 0)} and it occured #{elem(result, 1)} time(s)"
  end

end

IO.inspect StringHelpers.most_recurring_letter("Hello World")
IO.inspect StringHelpers.most_recurring_letter("ajsdf asdjf alkdsj flasdj flads")
IO.inspect StringHelpers.most_recurring_letter("ajsdf asdjf alkdsj flasdj flad asdj fakdsj fauro8urafsdljnvscx asdf")
```