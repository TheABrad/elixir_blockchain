defmodule CryptoTest do
  use ExUnit.Case
  doctest Crypto

  test "put hash generates a hash for the block" do
    block = Block.initial
    crypto = Crypto.put_hash(block)
    assert crypto.hash != nil 
  end
end
