use Mix.Config

if Mix.env() == :test do
  config :currency_converter,
    api_key: "fake-api-key",
    httpoison: CurrencyConverter.HTTPoisonMock
end
