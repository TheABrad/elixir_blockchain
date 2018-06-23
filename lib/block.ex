defmodule Block do
  defstruct [:data, :timestamp, :previous_hash, :hash]

  def new(data, previous_hash) do
    %Block{
      data: data,
      previous_hash: previous_hash,
      timestamp: DateTime.utc_now()
    }
  end

  def initial do
    %Block{
      data: "ZERO_DATA",
      previous_hash: "ZERO_HASH",
      timestamp: DateTime.utc_now()
    }
  end

  def valid?(%Block{} = block)  do
    Crypto.hash(block) == block.hash
  end

  def valid?(%Block{} = block, %Block{} = previous_block) do
    (block.previous_hash == previous_block.hash) && valid?(block)
  end
end
