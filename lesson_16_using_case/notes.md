# Lesson 16 - Using Case - Notes

To use case, we pass it a value or structure of sort and then we pattern match to control the flow of our application:

```elixir
my_var = "asdfas"
case my_var do
  2 -> "It's the number 2"
  "hello" -> "It's the string hello"
  1 -> "It's the number 1"
  _ -> "It's neither 1, 2 or hello"
end
```

We can use pattern matching all of it's forms:

```elixir
my_var = "hellfo world"
case my_var do
  "hello" <> _ -> "This string starts with hello"
  _ -> "This string does not start with hello"
end
```

You will see this pattern a lot in Elixir:

```elixir
# result = {:ok, :success}
# result = {:error, "Invalid input"}
result = "asdfads"

case result do
  {:ok, _} -> 
    "Success!!"
  {:error, message} -> 
    "You got an error #{message}"
  _ -> 
    "Unrecognized result"
end
```

You can also use guards with `case`:

```elixir
# number = 15
number = 5
case number do
  x when x > 10 -> "The number is big"
  y when y > 5  -> "The number is medium"
  _ -> "The number is small"
end
```

You can also use `case` in a series of `pipe (|>)` operations:

```elixir
defmodule MyModule do
  # def my_func(), do: {:ok, :success}
  def my_func(), do: {:error, :success}
end


MyModule.my_func() 
|> case do
  {:ok, _} -> "Operations is a success"
  _ -> "Operation Failed"
end
```
