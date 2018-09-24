defmodule Blockchain.Server do
  use GenServer
  
  # Client
  def start_link() do
    GenServer.start_link(__MODULE__, [] )
  end

  def view(pid) do
    GenServer.call(pid, :view)
  end

  def add(pid, message) do
   GenServer.cast(pid, message)
  end

  # Server
  def init(chain) do
    chain = Blockchain.new
    {:ok, chain}
  end

  def handle_call(:view, _from, chain) do
    {:reply, chain, chain}
  end

  def handle_cast(message, chain) do
    updated_chain = Blockchain.insert(chain, message)
    {:noreply, updated_chain}
  end
end
