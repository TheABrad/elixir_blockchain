defmodule BlockchainTest do
  use ExUnit.Case
  doctest Blockchain

  test "creates a new blockchain" do
    blockchain = Blockchain.new
    assert List.first(blockchain).previous_hash == "ZERO_HASH"
  end

  test "inserts a new block to the blockchain" do
    blockchain = Blockchain.new
    blockchain = Blockchain.insert(blockchain, "1 Coin")

    assert Enum.count(blockchain) == 2
  end
end
