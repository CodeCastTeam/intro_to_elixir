# Lessons 9 Notes - Maps, Structs and Keyword Lists

## Maps
Are the primary key/value storage in Elixir. 

Keys in maps can be any type, most commonly atoms or strings.

Here is how we define a map in Elixir

```elixir
my_map = %{"name" => "John Smith", "age" => 15}

# We can access the values using the [] syntax as in:
IO.puts my_map["age"]
IO.puts my_map["name"]
```

It's most common to use atoms. Atom are defined using `:` before the name of the atom. for instance, `:apple` or `:ok` and so on. They are most commonly used as return value (usually in tuples), `{:error, "invalid input"}`.

Also, it's very common to use atom as keys to maps:

```elixir
my_map = %{:name => "John Smith", :age => 15 }
# which can be shorted
my_map = %{name: "John Smith", age: 15 }
# if you do so (using atoms as keys), you have a nice syntax sugar to access value:
IO.puts my_map.name
IO.puts my_map.age
```

You can use `Map` library that is built in with elixir to perform functions on Elixir maps.

## Structs

If we want more control over key/value structure, we can use stucts that enforce the presence of certain keys.

```elixir
defmodule Person do
  defstruct name: "", age: 15
end
```

We can use the struct similar how to use map, for instance:
```elixir
j = %Person{name: "John Smith"}
```


## Keyword Lists

Are basically lists with extra features. It behaves like a key/value data structure but it's a list at the end of the day.

It's common in functional programming language to have lists like this:

```elixir
my_list = [{:a, 1}, {:b, 2}]
my_list = [a: 1, b: 2]
```

Key things to note for keyword lists:
- Order matters in keywords lists, things are stored in the order you create them at
- Keys are always atoms
- Keys can appear more than once 