# Lessons 11 Notes - The Awesome |> operator

## Enter |> 
If you want to apply multiple functions on a value such a string, you can following mutliple approaches:

Approach 1:
```elixir
s = "  hello "
trimmed_s = String.trim(s)
cap_trimmed_s = String.capitalize(trimmed_s)
rev_trimmed_s = String.reverse(cap_trimmed_s)
```

Approach 2:

```elixir
s = "  hello "
rev_trimmed_s = String.reverse(String.capitalize(String.trim(s)))
```

Approach 3:

```elixir
s = "  hello "
rev_trimmed_s = s 
                |> String.trim() 
                |> String.capitalize() 
                |> String.reverse()

```

## Example 2

```elixir 
my_map = %{vancouver: 15, toronto: 25, halifax: 20}

my_map |> Map.keys() |> Enum.map(fn c -> Atom.to_string(c) end)

capitalized_cities = my_map 
                     |> Map.keys() 
                     |> Enum.map(&Atom.to_string(&1)) 
                     |> Enum.map(&String.capitalize(&1))
```