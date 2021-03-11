defmodule Ex4.ParserTest do
  use ExUnit.Case
  import Ex4.Parser

  test "it parses P command" do
    cmd = parse("P")
    assert cmd == {:ok, "P", []}
  end

  test "it returns error for invalid functions" do
    cmd = parse("X")
    assert cmd == {:error}
  end

  test "it parses the valid commands" do
    cases = [
      ["D", {:ok, "D", []}],
      ["W 2", {:ok, "W", [2]}],
      ["N 1", {:ok, "N", [1]}],
      ["E 2", {:ok, "E", [2]}],
      ["S 1", {:ok, "S", [1]}],
      ["U", {:ok, "U", []}]
    ]

    for [input, expected] <- cases do
      cmd = parse(input)
      assert cmd == expected
    end
  end
end
