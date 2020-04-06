defmodule SlimServer.Application do

  use Application
  require Logger
  alias SlimServer.EndPoint

  def start(_type, _args) do
    children = [
      EndPoint
    ]
    opts = [strategy: :one_for_one, name: SlimServer.Supervisor]
    Logger.info("Starting application...")
    Supervisor.start_link(children, opts)
  end
end
