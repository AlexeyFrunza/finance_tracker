class Stock < ApplicationRecord
  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(publishable_token: 'Tpk_6ec56c0cf331473ea205a67e0cbbe5ce',
                                  secret_token: 'Tsk_f98275855a9a4552bd1a1750a892a689',
                                  endpoint: 'https://sandbox.iexapis.com/v1')
    client.price(ticker_symbol)
  end
end
