defmodule Luhnatex.Mixfile do
  use Mix.Project

  def project do
    [app: :luhnatex,
     version: "0.5.0",
     elixir: "~> 1.0",
     description: "Luhn algorithm in Elixir",
     package: [
       maintainers: ["Takayuki Matsubara", "Florian J. Breunig"],
       licenses: ["MIT"],
       links: %{"GitHub" => "https://github.com/my-flow/luhnatex"}
     ],
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     test_coverage: [tool: ExCoveralls],
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type `mix help deps` for more examples and options
  defp deps do
    [{:excoveralls, "~> 0.3", only: :dev},
     {:power_assert, "~> 0.0.3", only: :test}]
  end
end
