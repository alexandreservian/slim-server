defmodule SlimServer.EndPoint do
  use Plug.Router

  plug :match
  plug :dispatch

  require Logger

  def child_spec(_opts) do
    port = getPort()
    Logger.info("Starting server at http://localhost:#{port}/")
    Plug.Cowboy.child_spec(scheme: :http, plug: __MODULE__, options: [port: port])
  end
  defp getPort, do: Application.get_env :slim_server, :port, 8080

  match _ do
    send_resp(conn, 404, "Oops!")
  end
end
