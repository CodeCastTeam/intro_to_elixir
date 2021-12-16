# Lessons 9 Homework - Maps, Structs and Keyword Lists

## Build a struct as such
Build a struct mimicking a `Person` that has:
- First Name
- Last Name
- Date of Birth
- List of hobbies (default to `[]`)


## Merging Maps

Find out how to compose a map from two maps.

What happens if there is a key that exists in both of them?

## Keyword List Or Map

Build a module `Helper` with functions that behave as such:

```elixir
Helper.print(%{a: 1, b: 2})
# You have a Map:
# a is 1
# b is 2

Helper.print([a: 1, b: 2])
# You have a keyword list:
# a is 1
# b is 2
```

Aim to do the above with pattern matching and gaurds.