# Lesson 6 Homework - Pattern Matching
Using Pattern matching, do the following:

1- Extract the second element in this tuple `{"elixir", "is", "awesome"}` and set it to a variable `a`.

2- Given a list `[1, 2, 3, 4]` do the following:
- Set variable `a` to value `1`
- Set variable `b` to value `2`
- Set variable `c` to the list remainder `[3, 4]`

Do all that in a single pattern-matching line.

3- Write a module `MysteryBox` that behaves as follows. 

```elixir
MysteryBox.run({4, 5}) # returns 20 (multiply two numbers)
MysteryBox.run("hello", "world") # returns "hello world" (concatenate)
MysteryBox.run("john") # returns "Hello John"
```
make sure to use pattern matching for all

Stretch 1: attempt the following:
```elixir
MysteryBox.run([1, 2, 3, 4]) # returns 10 (sum of list elements)

# HINT: refresh your memory on recursion
```

Stretch 2: attempt the following:
```elixir
MysteryBox.run("hello", "world") # returns 10 (sum of list elements)
MysteryBox.run(5, 2) # returns 7 (sum of the two elements)

# HINT: google up `guard` clauses in Elixir (we will study more later)
```

