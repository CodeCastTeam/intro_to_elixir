# Lesson 19 - Enumerable Comprehension

Is basically using `for` to loop through enumerables.

```elixir
list = [1, 5, 4, 6]

# Using Enum
Enum.each(list, fn x -> IO.puts x end)
Enum.each(list, &(IO.puts(&1)))

# Using for (comprehension)
for x <- list do
  IO.puts x
end
```
`for` works with other enumerables:

```elixir
for n <- 1..100 do
  IO.puts n
end
```
It can work with Keyword lists:

```elixir
my_kl = [a: 1, b: 2, c: 3]

for {x, y} <- my_kl do
  IO.puts "first item is #{x}"
  IO.puts "second item is #{y}"
  IO.puts "---"
end
```