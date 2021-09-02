defmodule App1.MixProject do
  use Mix.Project

  def project do
    [
      app: :app1,
      version: "0.1.0",
      build_path: "../../_build",
      config_path: "../../config/config.exs",
      deps_path: "../../deps",
      lockfile: "../../mix.lock",
      elixir: "~> 1.13-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.5.12"},
      {:phoenix_pubsub, "~> 2.0"},
      {:phoenix_ecto, "~> 4.4"},
      {:ecto_sql, "~> 3.7"},
      {:ecto, "~> 3.7.1"},
      {:phoenix_html, "~> 3.0"},
      {:phoenix_live_reload, "~> 1.3", only: [:dev, :front]},
      {:decimal, "~> 1.9"},
      {:gettext, "~> 0.18"},
      {:app0, in_umbrella: true},
      {:plug, "~> 1.12"},
      {:plug_cowboy, "~> 2.5"},
      {:absinthe, "~> 1.6.5"},
      {:absinthe_plug, "~> 1.5.8"},
      {:ex_rated, "~> 2.0"},
      {:corsica, "~> 1.1"},
      {:appsignal_phoenix, "~> 2.0"},
      {:mock, "~> 0.3", only: :test},
      {:nimble_csv, "~> 1.1"},
      {:bamboo, "~> 1.7"}
    ]
  end
end
