# Lesson 18 - Using If and Unless

We can use `if` when we want to check a single condition.

```elixir
list = [1,2,3]
if Enum.count(list) == 3 do
  IO.puts "The list has three elements."
else
  IO.puts "The list doesn't not have three elements."
end
```
You can use `unless` as the opposite of `if` meaning that it will execute the code in its block if the condition returns `false`.

```elixir
list = [1, 2, 3, 4]
unless Enum.count(list) == 3 do
  "The list does not have three elements"
end
# The above is equivalent to doing
if Enum.count(list) != 3 do
  "The list does not have three elements"
end
```

We can use it to assign variables:

```elixir
list = [1, 2, 3, 4]

my_word = if Enum.count(list) > 3 do
             "The list is big"
          else
             "The list is small"
          end

my_word = if Enum.count(list) > 3, do: "The list is big", else: "The list is small"
```

## Variable Scoping

```elixir
list = [1, 2, 3, 4]
x = "hello"
if Enum.count(list) > 3 do
  x = "The list is big"
else
  x = "The list is small"
end

IO.puts x
```