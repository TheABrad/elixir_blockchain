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
end
