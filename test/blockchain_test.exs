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

  test "checks new block's previous hash" do
    blockchain = Blockchain.new
    blockchain = blockchain |> Blockchain.insert("1 coin") |> Blockchain.insert("2 coin") 

    assert Enum.at(blockchain, 0).previous_hash == Enum.at(blockchain,1).hash
  end

end
