defmodule CurrencyConverterTest do
  use ExUnit.Case, async: false

  describe "&convert!" do
    test "given USD, returns JPY" do
      assert CurrencyConverter.convert!("USD", "JPY") == 108.78504
    end

    test "given missing API key, returns error" do
      api_key = Application.fetch_env!(:currency_converter, :api_key)
      Application.put_env(:currency_converter, :api_key, nil)
      assert_raise MatchError, fn -> CurrencyConverter.convert!("USD", "JPY") == 108.78504 end
      Application.put_env(:currency_converter, :api_key, api_key)
    end
  end
end
