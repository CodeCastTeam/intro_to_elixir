# Lesson 5 - On Lists

We define lists using `[]`

Are implemented using `Linked List` principles.

We we want to work with a large amount of data. We prefer lists to tuples.

```elixir
my_first_list = ["a", "y", "h"]
my_extended_list = ["z" | my_first_list] # remember: this does not mutate the original
```

to concatenate two lists together we use the `++` operator.

```elixir
[1,2] ++ [3,4]
```

If possible prefer using the `|` operator to expand the list instead of using `++`.

You can look at the built-in `List` module that contains many handy functions to work with lists. Here is an example

```elixir
my_list = [1, 2, 3]
List.insert_at(my_list, 1, "abc") # [1, "abc", 2, 3]
```
