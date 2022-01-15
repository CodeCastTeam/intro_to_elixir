defmodule StarWarsTest do
  use ExUnit.Case
  doctest StarWars

  test "greets the world" do
    assert StarWars.hello() == :world
  end

  test "greets by saying hello with titleized namne" do
    assert StarWars.greeting("john smith") == "Hello John Smith"
  end
end
