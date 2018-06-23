defmodule BlockTest do
  use ExUnit.Case
  doctest Block
  
  test "creates an intial block" do
    assert Block.genesis.data, "ZERO_DATA"
  end

  test "checks if block is valid" do
    block = Crypto.put_hash(Block.genesis)
    assert Block.valid?(block) == true
  end
end
