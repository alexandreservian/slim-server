defmodule SlimServer.SimpleCall do
  import Plug.Conn

  def init(options), do: options

  def call(conn, _options) do
    conn
      |> put_resp_content_type("text/plain")
      |> send_resp(200, "Hello World!\n")
  end
end
