defmodule BlockTest do
  use ExUnit.Case
  doctest Block
  
  test "creates an intial block" do
    assert Block.initial.data, "ZERO_DATA"
  end
end
