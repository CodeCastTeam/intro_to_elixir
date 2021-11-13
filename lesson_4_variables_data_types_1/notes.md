# Lesson 4 - Variables and Data Types - Part 1

## Variables
Elixir is dynamically typed (Duck typing)

```elixir
a = 1
name = "Tam"
IO.puts a
IO.puts name
```

Elixir follows `snake_case` convention for variable naming.

You can always find more information about a particualr type in Elixir using Hexdocs: https://hexdocs.pm


## Integers and Floats
We can define integers and floats by simply putting numbers. Floats get defined when there is a decimal to the number.

```elixir
im_an_integer = 123
im_a_float = 123.5
```
You can make use the Elixir built in Integer and Float modules to get access to handy functions:
https://hexdocs.pm/elixir/1.12/Integer.html
https://hexdocs.pm/elixir/1.12/Float.html 


## Strings
You can define string using `"`

Strings are stored as binary: series of bits that is divisble by 8

To concatenate two string together we use `<>`

If you use single quots `'` you're defining a character list. 

Practically speaking, you almost always deal with string using `"`

We can do String interporlation using `#{}` syntax as such:

```elixir
greeting = "Hello"
IO.puts "#{greeting}, World!"
```

https://hexdocs.pm/elixir/1.12/String.html



## Tuples
Fixed-size collection of values.

You can defines tuples using `{}`

Tuples are most practically used for storing a small amount of data, usually 2 to 3 elements.

For instance, they are widely used when we need to return more than a single value/element from a function.

```elixir
defmodule MyModule do
  def my_function() do
    {1, 2}
  end
end
```