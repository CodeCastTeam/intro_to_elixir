defmodule Helpers.Strings do
  @moduledoc """
  This modules provides handy string helpers
  """

  @doc """
  This function titleizes strings by capitalizes each word.

  ## Examples
    iex> Strings.titleize("hello world")
    "Hello World"
  """
  def titleize(string) do
    string
    |> String.split()
    |> Enum.map(&(String.capitalize(&1)))
    |> Enum.join(" ")
  end
end
