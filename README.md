# CurrencyConverter

Coverts source currency to target currency.

Example: 

    iex> CurrencyConverter.convert!("USD", "JPY")
    108.78504 # 1 USD =~ 108.78504 JPY

## Installation

1.  Add to `mix.exs`
    ```
    def deps do
      [
        {:currency_converter, "~> 0.1.0"}
      ]
    end
    ```

1.  If needed, get an API key for [Currency Converty API](https://www.currencyconverterapi.com/) (there is a free tier!)

1.  Add API key to config

    ```
    use Mix.Config

    config :currency_converter, api_key: <api_key>
    ```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/currency_converter](https://hexdocs.pm/currency_converter).

## License

[Apache 2.0](https://www.apache.org/licenses/LICENSE-2.0)