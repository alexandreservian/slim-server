defmodule SlimServer.MixProject do
  use Mix.Project

  def project do
    [
      app: :slim_server,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      extra_applications: [:logger],
      mod: {SlimServer.Application, []}
    ]
  end

  defp deps do
    [
      {:plug_cowboy, "~> 2.0"},
      {:poison, "~> 3.1"},
      {:remix, "~> 0.0.1", only: :dev}
    ]
  end
end
