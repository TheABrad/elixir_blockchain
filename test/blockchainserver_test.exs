defmodule Blockchain.ServerTest do
  use ExUnit.Case
  doctest Blockchain.Server

  setup do
    {:ok, server_pid} = Blockchain.Server.start_link()
    {:ok, server: server_pid}
  end

  test "Genesis Block is created upon BlockchainCreation", %{server: pid} do
    assert "ZERO_HASH" == Enum.at(Blockchain.Server.view(pid), -1).previous_hash
  end

  test "Add Block to Blockchain", %{server: pid} do
    assert :ok == Blockchain.Server.add(pid, "MESSAGE 1")
  end

  test "View Latest Block in Blockchain", %{server: pid} do
    Blockchain.Server.add(pid, "MESSAGE 2")
    assert "MESSAGE 2" == Enum.at(Blockchain.Server.view(pid), 0).data
  end
end
