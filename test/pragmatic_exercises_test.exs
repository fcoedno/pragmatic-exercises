defmodule PragmaticExercisesTest do
  use ExUnit.Case
  doctest PragmaticExercises

  test "greets the world" do
    assert PragmaticExercises.hello() == :world
  end
end
