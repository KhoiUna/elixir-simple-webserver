defmodule ElixirPlug.MixProject do
  use Mix.Project

  def project do
    [
      app: :elixir_plug,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :json, :plug_cowboy],
      mod: {ElixirPlug.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:json, "~> 1.4"},
      {:plug_cowboy, "~> 2.5"}
    ]
  end
end
