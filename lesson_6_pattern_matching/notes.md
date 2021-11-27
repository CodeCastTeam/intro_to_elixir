# Lesson 6 Notes - Pattern Matching

```elixir
a = 1
name = "Jen"
```
Elixir takes the `=` to the next level.

I want you to think of as a pattern matching operator and not simply an assignment operator.

```elixir
{a, b} = {1, 2}
# a will be 1
# b will be 2

a = {1, 2}
# a will be {1, 2}
```

The pattern matching feature using `=` expect exact matching or we will get an error. so
```elixir
{a, b, c} = {1, 2}
# will throw and error
# ** (MatchError) no match of right hand side value: {1, 2}
```
We can use variables prefixed with `_` if we don't care about a particular assignment or we can simply use `_`.
```elixir
my_tuple = {1, 2, 3}
# {1, 2, 3}
{a, b} = my_tuple
# ** (MatchError) no match of right hand side value: {1, 2, 3}

{a, b, _} = my_tuple
# {1, 2, 3}
# {a, b, _c} = my_tuple
{1, 2, 3}
c
# ** (CompileError) iex:8: undefined function c/0

a
# 1
b
# 2
```

We can use pattern matching with most data types and structures:
```elixir
"hello" <> rest_of_sentence = "hello world, how is it going?"

# rest_of_sentence will be " world, how is it going?"

my_list = [1, 2, 3]
# [1, 2, 3]
new_list = [0 | my_list]
# [0, 1, 2, 3]
new_list
# [0, 1, 2, 3]
[a, b, c, d] = new_list
# [0, 1, 2, 3]
 a
# 0
b
# 1
c
# 2
d
# 3
[a | rest_of_list] = new_list
# [0, 1, 2, 3]
rest_of_list
# [1, 2, 3]
[x | rest_of_rest_of_list] = rest_of_list
# [1, 2, 3]
rest_of_rest_of_list
# [2, 3]
x
# 1
[a | b] = []
# ** (MatchError) no match of right hand side value: []

[a | b] = [1]
# [1]
b
# []
```

## Pattern Matching functions
Pattern matching fucntion in Elixir goes beyond simple function overriding by matching the actual paramaters given to the function.

```js
function hello(a) { // ... }
function hello(a, b) { // ... }

// hello("a")
// hello("a", "b")
```

```elixir
defmodule MyModule do

  def my_fun({a, b}) do
    IO.puts "Hello #{a} and hello #{b}"
  end

  def my_fun(a) do
    IO.puts "Hello #{a}"
  end

  def my_fun({a, b}, c) do
    IO.puts "Goodbye #{a} and goodbye #{b} and you too #{c}"
  end

  def my_fun(a, b) do
    IO.puts "Goodbye #{a} and goodbye #{b}"
  end

end
```