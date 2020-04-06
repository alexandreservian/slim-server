defmodule SlimServer.EndPoint do
  use Plug.Router

  plug :match
  plug :dispatch

  require Logger

  def child_spec(opts) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]}
    }
  end

  defp getPort, do: Application.get_env :slim_server, :port, 4001

  def start_link(_opts) do
    port = getPort()
    Logger.info("Starting server at http://localhost:#{port}/")
    Plug.Cowboy.http __MODULE__, [], [port: port]
  end

  match _ do
    send_resp(conn, 404, "Oops!")
  end
end
