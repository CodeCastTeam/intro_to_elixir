# Lessons 13 - Drills and Tips - Part 2

## Fizz Buzz
Write a piece of code that prints numbers 1 to 100, with the following conditions: 

- If the number is divisible by 3 then print `FIZZ` instead of the number.
- If the number is divisible by 5 then print `BUZZ` instead of the number.
- If the number is divisible by 5 and 3 then print `FIZZBUZZ` instead of the number.

Build the solution above using only the techniques we learned so far. For instance, refrain from using `if` or `case` statements, which we will cover later.

## Solution 1
```elixir
defmodule FizzBuzz do

  def run(start_num \\ 1), do: print_num_or_fizz_buzz(start_num)

  # We need a way for the function callings to stop -> when we reach 100
  def print_num_or_fizz_buzz(100), do: IO.puts "BUZZ"

  # number is divisible by 5 and 3
  def print_num_or_fizz_buzz(num) when rem(num, 15) == 0  do
    IO.puts "FIZZBUZZ"
    print_num_or_fizz_buzz(num + 1)
  end

  # number is divisible by 3
  def print_num_or_fizz_buzz(num) when rem(num, 3) == 0  do
    IO.puts "FIZZ"
    print_num_or_fizz_buzz(num + 1)
  end

  # number is divisible by 5
  def print_num_or_fizz_buzz(num) when rem(num, 5) == 0  do
    IO.puts "BUZZ"
    print_num_or_fizz_buzz(num + 1)
  end

  # number is neither divisible by 5 nor 3
  def print_num_or_fizz_buzz(num) do
    IO.puts num
    print_num_or_fizz_buzz(num + 1)
  end
end

FizzBuzz.run() # this should do the Fizz Buzz Challenge printouts
```


## Solution 2
```elixir
defmodule FizzBuzz do

  def run(start_number \\ 1), do: Enum.each(start_number..100, &print_num_or_fizz_buzz(&1))

  def print_num_or_fizz_buzz(num) when rem(num, 15) == 0, do: IO.puts "FIZZBUZZ"
  def print_num_or_fizz_buzz(num) when rem(num, 5) == 0, do: IO.puts "BUZZ"
  def print_num_or_fizz_buzz(num) when rem(num, 3) == 0, do: IO.puts "FIZZ"
  def print_num_or_fizz_buzz(num), do: IO.puts num
end

FizzBuzz.run()
```