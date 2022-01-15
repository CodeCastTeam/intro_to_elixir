defmodule Helpers.StringsTest do
  use ExUnit.Case
  alias Helpers.Strings

  doctest Helpers.Strings

  test "it titleizes the string by having each word capitalized in the given string" do
    assert Strings.titleize("hello world") == "Hello World"
  end
end
