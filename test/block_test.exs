defmodule BlockTest do
  use ExUnit.Case
  doctest Block
  
  test "creates an intial block" do
    assert Block.initial.data, "ZERO_DATA"
  end

  test "checks if block is valid" do
    block = Crypto.put_hash(Block.initial)
    assert Block.valid?(block) == true
  end
end
