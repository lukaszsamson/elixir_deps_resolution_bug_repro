defmodule App3.MixProject do
  use Mix.Project

  def project do
    [
      app: :app3,
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
      {:phoenix, "~> 1.5.0"},
      {:phoenix_pubsub, "~> 2.0"},
      {:phoenix_ecto, "~> 4.0"},
      {:ecto_sql, "~> 3.0"},
      {:phoenix_html, "~> 2.6"},
      {:phoenix_live_reload, "~> 1.2.0", only: [:dev, :front]},
      {:decimal, "~> 1.5"},
      {:gettext, "~> 0.11"},
      {:app0, in_umbrella: true},
      {:plug, "~> 1.7"},
      {:plug_cowboy, "~> 2.5"},
      {:absinthe, "~> 1.6.0"},
      {:absinthe_plug, "~> 1.5.0"},
      {:ex_rated, "~> 2.0"},
      {:corsica, "~> 1.0"},
      {:appsignal_phoenix, "~> 2.0"},
      {:mock, "~> 0.3", only: :test},
      {:nimble_csv, "~> 1.1"},
      {:bamboo, "~> 1.2"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true}
    ]
  end
end
