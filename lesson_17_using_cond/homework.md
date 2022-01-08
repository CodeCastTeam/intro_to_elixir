# Lesson 17 - Using Cond

Is useful when we don't to pattern match.

```elixir
cond do
  1 + 1 == 3 -> "block 1"
  1 + 2 == 3 -> "block 2"
  true -> "block 3"
end
```
Another example:

```elixir
my_list = ["hello", 1, 2, nil]

cond do
  Enum.count(my_list) == 3 -> "The length of the list is 3"
  List.last(my_list) == 4 -> "The last element of the list is 4"
  true -> "I don't know"
end
```