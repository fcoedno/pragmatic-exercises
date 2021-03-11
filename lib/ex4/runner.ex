defmodule Ex4.Runner do
  def run({:ok, cmd, args}) when is_binary(cmd) and is_list(args) do
    cmd = cmd
    |> String.downcase()
    |> String.to_atom()

    apply(__MODULE__, cmd, args)
  end

  def run({:error}) do
    IO.puts("Command not found!")
  end

  def p(pen) do
    IO.puts("select pen #{pen}")
  end

  def d() do
    IO.puts("pen down")
  end

  def w(dst) do
    IO.puts("draw west #{dst}cm")
  end

  def n(dst) do
    IO.puts("draw north #{dst}cm")
  end

  def e(dst) do
    IO.puts("draw east #{dst}cm")
  end

  def s(dst) do
    IO.puts("draw south #{dst}cm")
  end

  def u() do
    IO.puts("pen up")
  end
end
