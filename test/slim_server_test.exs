defmodule SlimServerTest do
  use ExUnit.Case
  doctest SlimServer

  test "greets the world" do
    assert SlimServer.hello() == :world
  end
end
