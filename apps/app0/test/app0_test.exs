defmodule App0Test do
  use ExUnit.Case
  doctest App0

  test "greets the world" do
    assert App0.hello() == :world
  end
end
