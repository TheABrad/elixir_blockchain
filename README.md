# Blockchain

Simple Blockchain written in Elixir. The chain is placed on a GenServer.

## Run
`iex -S mix`

``` elixir
# Create a new Blockchain
iex> {:ok, pid} = Blockchain.Server.start_link 
```
``` elixir
# Insert  a new block with data
iex> Blockchain.Server.add(pid, "MESSAGE")
```
``` elixir
# Check the Blockchain
iex> Blockchain.Server.view(pid) 
```

## Run Tests
`mix test --trace`
