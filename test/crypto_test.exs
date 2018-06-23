defmodule CryptoTest do
  use ExUnit.Case
  doctest Crypto

  test "put hash generates a hash for the block" do
    block = Crypto.put_hash(Block.initial)
    assert block.hash != nil 
  end
end
