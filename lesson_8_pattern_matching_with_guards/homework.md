# Lessons 8 Homework - Pattern Matching with Guards

Using Pattern Matching & Guards, implement a module with functions that return the following:

```elixir
MyModule.my_function(1, 2) # returns 3 (1 + 2)
MyModule.my_function("Hello", "World") # returns "Hello World" (concatenate with a space)
MyModule.my_function(1, 2, 3) # returns 6 (1 + 2 + 3)
MyModule.my_function([1, 2]) # for lists returns 2 (sum for list elements that are size 2 or less)
MyModule.my_function([1, 2, 3, 4]) # returns 24 (product of list elements for sizes 3 or more)
MyModule.my_function("apple") # Return "Hello Apple"
MyModule.my_function({"John", "Jen"}) # Return "Hello Apple and Jen" (assum a tuple with size 2)
```

Please note that you won't encounter modules/functions like this one in real-life Elixir. It's better to have a different function with different names. This exercise is meant to practice using pattern matching and guards.