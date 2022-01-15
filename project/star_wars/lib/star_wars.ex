defmodule StarWars do
  @moduledoc """
  Documentation for `StarWars`.
  """

  # import makes all the functions of the imported module
  # available as if they are written in this module
  # import Helpers.Strings

  # using alias we can access the module without its fully-qualified name
  # so instead of accessing the module with: Helpers.Strings
  # with alias we can simply use: Strings
  alias Helpers.Strings

  @doc """
  Hello world.

  ## Examples

      iex> StarWars.hello()
      :world

  """
  def hello do
    :world
  end

  @doc """
  This function greets by returning `Hello` with titlezing the input.

  ## Example

    iex> StarWars.greeting("jen millar")
    "Hello Jen Millar"

  """
  def greeting(name) do
    "Hello #{Strings.titleize(name)}"
  end

end