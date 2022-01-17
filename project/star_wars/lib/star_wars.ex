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
  This function takes two names and queries the SWAPI and tells you which character is taller than the other

  """
  def who_is_taller(name_1, name_2) do
    with {:ok, person_1_info} <- fetch_person_info_by_name(name_1),
         {:ok, person_2_info} <- fetch_person_info_by_name(name_2) do
        # this will only execute when everything in the `with` clauses matches correctly
        if person_1_is_taller?(person_1_info, person_2_info) do
          "#{name_1} is taller than #{name_2}"
        else
          "#{name_2} is taller than #{name_1}"
        end
    else
      _ -> "Names are misspelled or some other error happened connecting to the API"
    end
  end

  def person_1_is_taller?(%{"height" => person_1_height}, %{"height" => person_2_height}) do
    String.to_integer(person_1_height) > String.to_integer(person_2_height)
  end

  def fetch_person_info_by_name(name) do
    case get_all_people() do
      {:ok, results} ->
        {:ok, Enum.find(results, fn person -> String.downcase(person["name"]) == String.downcase(name) end)}

      {:error, message} ->
        {:error, "Error happened: #{message}"}
    end
  end

  def get_all_people() do
    HTTPoison.start()

    "https://swapi.dev/api/people"
    |> HTTPoison.get!()
    |> handle_api_response()
    |> case do
      {:ok, %{"results" => results}} -> {:ok, results}
      {:error, _} -> {:error, "Couldn't fetch all people"}
    end
  end

  def fetch_person_info_by_id(id) do
    HTTPoison.start()

    "https://swapi.dev/api/people/#{id}"
    |> HTTPoison.get!()
    |> handle_api_response()
    |> case do
      {:ok, data} -> IO.inspect(data)
      {:error, error_message} -> IO.puts("Error occurred: #{error_message}")
    end
  end

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
