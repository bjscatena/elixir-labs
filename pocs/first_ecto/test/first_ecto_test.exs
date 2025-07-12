defmodule FirstEctoTest do
  use ExUnit.Case
  doctest FirstEcto

  test "greets the world" do
    assert FirstEcto.hello() == :world
  end
end
