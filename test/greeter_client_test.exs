defmodule GreeterClientTest do
  use ExUnit.Case
  doctest GreeterClient

  test "greets the world" do
    assert GreeterClient.hello() == :world
  end
end
