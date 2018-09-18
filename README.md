# Blockchain

Simple Blockchain written in Elixir

## Run
`iex -S mix`

``` elixir
# Create a new Blockchain
iex> chain = Blockchain.new
```
``` elixir
# Insert new data as a block
iex> chain = Blockchain.insert(chain, "MESSAGE")
```
``` elixir
# Check the Blockchain
iex> chain
```

## Run Tests
`mix test --trace`
