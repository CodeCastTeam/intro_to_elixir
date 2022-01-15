defmodule Helpers.StringsTest do
  use ExUnit.Case
  alias Helpers.Strings

  doctest Strings

  test "titleizes a string" do
    assert Strings.titleize("hello world") == "Hello World"
  end

end
