defmodule TestNeo4j.MixProject do
  use Mix.Project

  def project do
    [
      app: :test_neo4j,
      version: "0.1.0",
      elixir: "~> 1.13",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: { TestNeo4j.Application, [] }
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:bolt_sips, "~> 2.0.0-rc"},
      {:jason, "~> 1.1"}
    ]
  end
end
