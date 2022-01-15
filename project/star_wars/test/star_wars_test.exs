defmodule StarWarsTest do
  use ExUnit.Case
  doctest StarWars

  test "greets the world" do
    assert StarWars.hello() == :world
  end

  test "It greets by returning Hello with titleized string that is given" do
    assert StarWars.greeting("john smith") == "Hello John Smith"
  end
end
