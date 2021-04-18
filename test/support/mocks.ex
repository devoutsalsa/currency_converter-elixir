defmodule CurrencyConverter.HTTPoisonMock do
  def get!(_uri) do
    if Application.get_env(:currency_converter, :api_key) do
      %HTTPoison.Response{body: "{\"USD_JPY\":108.78504}", status_code: 200}
    else
      %HTTPoison.Response{
        body:
          "{\"status\":400,\"error\":\"Free API Key is required. Obtain your free API key at https://free.currencyconverterapi.com\"}",
        status_code: 400
      }
    end
  end
end
