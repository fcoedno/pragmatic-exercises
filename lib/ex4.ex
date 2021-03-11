defmodule Ex4 do
  def run do
    input = """
    P 2
    D
    W 2
    N 1
    E 2
    S 1
    U
    """

    input
    |> String.split("\n")
    |> Enum.map(&String.trim/1)
    |> Enum.filter(fn (line) -> String.length(line) > 0 end)
    |> Enum.map(&Ex4.Parser.parse/1)
    |> Enum.each(&Ex4.Runner.run/1)
  end
end
