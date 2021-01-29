defmodule ExercisesTest do
  use ExUnit.Case
  doctest Exercises

  test "greets the world" do
    assert Exercises.hello() == "Olá"
  end
end
