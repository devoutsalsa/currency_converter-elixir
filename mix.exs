defmodule CurrencyConverter.MixProject do
  use Mix.Project

  def project do
    [
      app: :currency_converter,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      elixirc_paths: elixirc_paths(Mix.env()),
      homepage_url: github_url(),
      package: package(),
      source_url: github_url(),
      description: description()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {CurrencyConverter.Application, []}
    ]
  end

  defp description() do
    "Coverts source currency to target currency."
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]

  defp elixirc_paths(_), do: ["lib"]

  def github_url() do
    "https://github.com/devoutsalsa/currency_converter-elixir"
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # HTTP client
      {:httpoison, "~> 1.8"},

      # JSON decoder
      {:jason, "~> 1.2"},

      # static code analyzer
      {:dialyxir, "~> 1.0", only: [:dev], runtime: false},

      # documentation generator
      {:ex_doc, "~> 0.14", only: :dev, runtime: false}
    ]
  end

  defp package() do
    [
      name: "currency_converter",
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => github_url()},
      maintainers: ["Michael Pope"]
    ]
  end
end
