# Lesson 20: Project Set Up

We will be integrating with the Star War API: https://swapi.dev/ to learn how to handle API integrations with Elixir.

You can start a new project by running `mix new star_wars`

You can load up `iex` with all your module and all the libraries added using this command: `iex -S mix`

EXS are Elixir scripts files, they don't get compiled by you can execute them as Elixir code.

to install dependencies you can run `mix deps.get` after adding the dependency information in the `deps` function within mix.exs. For example:

```elixir
  defp deps do
    [
      {:httpoison, "~> 1.8"}
    ]
  end
```