defmodule Ex4.Parser do
  def parse(line) when is_binary(line) do
    line
    |> String.split(" ")
    |> parse_tokens()
  end

  defp parse_tokens([cmd_token | args]) do
    cmd = parse_cmd(cmd_token)

    args = args
    |> Enum.map(&String.to_integer/1)

    case cmd do
      {:ok, value} -> {:ok, value, args}
      _ -> {:error}
    end
  end

  defp parse_tokens([]) do
    {:error}
  end

  defp parse_cmd("P"), do: {:ok, "P"}

  defp parse_cmd("D"), do: {:ok, "D"}

  defp parse_cmd("W"), do: {:ok, "W"}

  defp parse_cmd("N"), do: {:ok, "N"}

  defp parse_cmd("E"), do: {:ok, "E"}

  defp parse_cmd("S"), do: {:ok, "S"}

  defp parse_cmd("U"), do: {:ok, "U"}

  defp parse_cmd(_) do
    {:error}
  end
end
