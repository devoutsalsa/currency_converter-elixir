defmodule CurrencyConverter do
  @httpoison Application.get_env(:currency_converter, :httpoison, HTTPoison)

  @moduledoc """
  Coverts source currency to target currency.

  Example: 

      iex> CurrencyConverter.convert!("USD", "JPY")
      108.78504 # 1 USD =~ 108.78504 JPY
  """

  @base_uri "http://free.currconv.com/api/v7/convert"

  @doc @moduledoc
  @spec convert!(source_currency :: String.t(), target_currency :: String.t()) ::
          number() | no_return()
  def convert!(source_currency, target_currency) do
    q = source_currency <> "_" <> target_currency

    params =
      [
        q: q,
        compact: "ultra",
        apiKey: Application.get_env(:currency_converter, :api_key)
      ]
      |> URI.encode_query()

    uri = @base_uri <> "?" <> params

    %HTTPoison.Response{body: body, status_code: 200} = @httpoison.get!(uri)

    body
    |> Jason.decode!()
    |> Map.fetch!(q)
  end
end
