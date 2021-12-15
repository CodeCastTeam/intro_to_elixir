defmodule GuardsPractice do

  def my_function(string) when is_binary(string) do
    "Hello #{string}"
  end

  def my_function({num1, num2}) do
    num1 + num2
  end

  def my_function(number) when is_number(number) and number > 100 do
    "Your number #{number} is large"
  end

  def my_function(number) when is_number(number) do
    "Your number is small"
  end

  def my_function(_arg) do
    "I don't know what to do"
  end

end
