# Lesson 3 Notes - On Functions

Elixir is a compiled language. Files get compiled before you can run them.

Elixir file --> BEAM --> Run the Beam on Erlang VM

You will see two types of files primarly in Elixir `.ex` -> get compiled, `.exs` -> doesn't get compiled.

## Interactive Elixir
You can start a program `iex` which is interactive Elixir to execute Elixir code on the fly

Within Interactive Elixir (iex) you can 'bring' a module by compiling it's file using a code like:
```elixir
c "./on_functions.ex"
```