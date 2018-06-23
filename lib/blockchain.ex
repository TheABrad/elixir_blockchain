defmodule Blockchain do
  def new do
    [ Crypto.put_hash(Block.genesis) ]
  end

  def insert(blockchain, data) when is_list(blockchain) do
    %Block{hash: previous} = hd(blockchain)

    block = 
      data
      |> Block.new(previous)
      |> Crypto.put_hash

    [ block | blockchain ]
  end
end
