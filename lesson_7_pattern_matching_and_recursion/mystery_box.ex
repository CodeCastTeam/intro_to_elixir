# MysteryBox.run([1, 2, 3, 4]) -> return 10
defmodule MysteryBox do

  # def sum([]) do
  #   0 # function return the last element in them
  # end
  # Which can simply be written as:

  def sum([]), do: 0

  # sum([1, 2, 3, 4]) -> 1 + sum([2, 3, 4])
  def sum([first_element | rest_of_list]) do
    first_element + sum(rest_of_list)
  end

end
