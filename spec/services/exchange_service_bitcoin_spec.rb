require 'spec_helper'
require 'json'
require './app/services/exchange_service_bitcoin'

describe "Currency Bitcoin Coindesk - " do
  before do
    @amount = rand(1..9999)
  end
  it "exchange BTC to BRL" do
    res = ExchangeServiceBitcoin.new("BTC","BRL",@amount).perform
    expect(res.is_a? Numeric).to eql(true)
    expect(res != 0 || @amount == 0).to eql(true)
  end

  it "exchange BRL to BTC" do
    res = ExchangeServiceBitcoin.new("BRL","BTC",@amount).perform
    expect(res.is_a? String).to eql(true)
    expect(res != 0 || @amount == 0).to eql(true)
  end

end
