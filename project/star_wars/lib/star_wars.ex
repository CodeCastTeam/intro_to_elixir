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


  def fetch_person_info_by_id(id) do
    HTTPoison.start

    "https://swapi.dev/api/people/#{id}"
    |> HTTPoison.get!
    |> handle_api_response()
  end

  def handle_api_response(%HTTPoison.Response{body: body, status_code: 200}) do
    IO.puts "SUCCESS"
    IO.puts body
  end

  def handle_api_response(%HTTPoison.Response{body: body, status_code: 404}) do
    IO.puts "RESOURCE NOT FOUND"
    IO.puts body
  end

  def handle_api_response(_) do
    IO.puts "UKNOWN ERROR"
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
