# Lessons 12 - Drills and Tips - Part 1

Write a module with a function the titleizes a string as in:

```elixir
StringHelpers.titleize("hello world how are you?")  # returns: Hello World How Are You?
```

## Solution

```elixir
defmodule StringHelpers do
  def titleize(string) do
    string
    |> String.split()
    |> Enum.map(&(String.capitalize(&1))) # |> Enum.map(fn word -> String.capitalize(word) end)
    |> Enum.join(" ")
  end
end
```