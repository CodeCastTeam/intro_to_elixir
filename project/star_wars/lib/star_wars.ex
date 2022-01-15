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

  @spec fetch_person_info_by_name(any) :: any
  def fetch_person_info_by_name(name) do
    case get_all_people() do
      {:ok, results} -> Enum.find(results, fn person -> person["name"] == name end)
      {:error, message} -> IO.puts "Error happened: #{message}"
    end
  end

  def get_all_people() do
    HTTPoison.start

    "https://swapi.dev/api/people"
    |> HTTPoison.get!
    |> handle_api_response()
    |> case do
      {:ok, %{"results" => results}} -> {:ok, results}
      {:error, _} -> {:error, "Couldn't fetch all people"}
    end
  end

  def fetch_person_info_by_id(id) do
    HTTPoison.start

    "https://swapi.dev/api/people/#{id}"
    |> HTTPoison.get!
    |> handle_api_response()
    |> case do
      {:ok, data} -> IO.inspect data
      {:error, error_message} -> IO.puts "Error occurred: #{error_message}"
    end
  end

  @spec handle_api_response(any) :: any
  def handle_api_response(%HTTPoison.Response{body: body, status_code: 200}) do
    {:ok, Poison.decode!(body)}
  end

  def handle_api_response(%HTTPoison.Response{status_code: 404}) do
    {:error, "Resource Not Found"}
  end

  def handle_api_response(_) do
    {:error, "UKNOWN ERROR"}
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
