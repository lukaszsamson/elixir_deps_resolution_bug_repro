defmodule App0.MixProject do
  use Mix.Project

  def project do
    [
      app: :app0,
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
      {:postgrex, "~> 0.14"},
      {:ecto_sql, "~> 3.0"},
      {:ex_machina, "~> 2.2", only: :test},
      {:poison, "~> 4.0"},
      {:gen_stage, "~> 1.0"},
      {:decimal, "~> 1.5"},
      {:ex_aws, "~> 2.1"},
      {:ex_aws_s3, "~> 2.0"},
      {:mogrify, "~> 0.5"},
      {:httpoison, "~> 1.1"},
      {:sweet_xml, "~> 0.6"},
      {:geolix, "~> 0.14"},
      # TODO return to hex versions when PRs merged
      # https://github.com/danhper/elixir-browser/pull/22
      # {:browser, "~> 0.3"},
      {:browser, github: "lukaszsamson/elixir-browser", branch: "dev"},
      {:jason, "~> 1.1"},
      {:pot, "~> 1.0"},
      {:bcrypt_elixir, "~> 2.0"},
      {:stream_data, "~> 0.3"},
      {:appsignal, "~> 2.0"},
      {:plug, "~> 1.7"},
      {:mock, "~> 0.3", only: :test},
      {:peerage, "~> 1.0"},
      {:nimble_parsec, "~> 1.1"},
      # {:protocol_security, git: "git@bitbucket.org:geeksoft_team/protocol-security.git"},
      # {:finotech_hide_secrets, git: "git@bitbucket.org:geeksoft_team/finotech_hide_secrets.git"}
      # {:dep_from_hexpm, "~> 0.3.0"},
      # {:dep_from_git, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"},
      # {:sibling_app_in_umbrella, in_umbrella: true}
    ]
  end
end
