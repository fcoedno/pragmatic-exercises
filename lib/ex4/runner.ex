defmodule Ex4.Runner do
  def run({:ok, cmd, args}) when is_binary(cmd) and is_list(args) do
    cmd = String.to_atom("_#{cmd}")
    apply(__MODULE__, cmd, args)
  end

  def run({:error}) do
    IO.puts("Command not found!")
  end

  def _P(pen) do
    IO.puts("select pen #{pen}")
  end

  def _D() do
    IO.puts("pen down")
  end

  def _W(dst) do
    IO.puts("draw west #{dst}cm")
  end

  def _N(dst) do
    IO.puts("draw north #{dst}cm")
  end

  def _E(dst) do
    IO.puts("draw east #{dst}cm")
  end

  def _S(dst) do
    IO.puts("draw south #{dst}cm")
  end

  def _U() do
    IO.puts("pen up")
  end
end
