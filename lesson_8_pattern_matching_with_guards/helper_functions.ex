defmodule HelperFunctions do

  # Find the number of elements in a list
  # [] -> 0
  # [1, "hey"] -> 2
  # [1, "hey", 5, 6, 7, 8] -> 6

  # [1, "hey", 5, 6, 7, 8] -> [1 | ["hey", 5, 6, 7, 8]]


  def list_size([]), do: 0

  def list_size([_element | rest_of_list]) do
    1 + list_size(rest_of_list)
  end

end
