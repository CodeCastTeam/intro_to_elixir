# Lessons 10 Notes - Enum and Anonymous Functions

## Enter Enum

You can find document on the Enum library here: https://hexdocs.pm/elixir/Enum.html

Very powerful library that you can use with Lists and Maps (from what we learned so far).

## Ananymous Functions

We have learned to define functions within modules, for example:

```elixir
defmodule HelperMethods do

  def add_five(x) do
    x + 5
  end

end
```

In some cases you need to define anonymous functions or set a function to a variable, you can do in Elixir using this syntax:

```elixir
add_five = fn x -> x + 5 end
```
to call it, you will have to use the `.` as in:

```elixir
add_five.(19)
```

You can also simplify this by using this syntax:

```elixir
add_five_2 = &(&1 + 5)
```

Here are ways we can apply functions with Enums:

```elixir
Enum.map([1, 2, 3], fn x -> x + 5 end)
Enum.map([1, 2, 3], &HelperMethods.add_five/1)
Enum.map([1, 2, 3], add_five_2)
Enum.map([1, 2, 3], &(&1 + 5))
```