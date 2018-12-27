require 'spec_helper'
require 'json'
require './app/services/exchange_service_bitcoin'

describe "Currency Bitcoin Coindesk - " do
  it "exchange BTC to BRL" do
    amount = 1
    res = ExchangeServiceBitcoin.new("BTC","BRL",amount).perform #perform => executa o teste
    expect(res.is_a? Numeric).to eql(true)
    expect(res != 0 || amount == 0).to eql(true)
  end

  it "exchange BRL to BTC" do
    amount = 1
    res = ExchangeServiceBitcoin.new("BRL","BTC",amount).perform #perform => executa o teste
    expect(res.is_a? String).to eql(true)
    expect(res != 0 || amount == 0).to eql(true)
  end

end
