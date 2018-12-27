require 'rest-client'
require 'json'

class ExchangeServiceBitcoin
  def initialize(source_currency, target_currency, amount)
    target_currency = source_currency unless target_currency != "BTC" # se o target for BTC unless = if not
    @source_currency = source_currency
    @target_currency = target_currency
    @amount = amount.to_f
  end

  def perform
    begin
      exchange_bitcoin_api_url = "https://api.coindesk.com/v1/bpi/currentprice/"
      url_coin_desk = "#{exchange_bitcoin_api_url}#{@target_currency}.json"
      res = RestClient.get url_coin_desk
      value = JSON.parse(res.body)['bpi']["#{@target_currency}"]['rate_float'].to_f

      # se a origem for bitcoin valor x amount senao amount / valor
      @source_currency == "BTC" ? value * @amount : ("%.20f" % @amount.fdiv(value)).sub(/\.?0*$/, "")

    rescue RestClient::ExceptionWithResponse => e
      e.response
    end
  end
end
