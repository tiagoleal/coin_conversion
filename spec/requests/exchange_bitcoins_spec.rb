require 'rails_helper'

RSpec.describe "ExchangeBitcoins", type: :request do
  # describe "GET #index bitcoin" do
  #   it "returns http sucess" do
  #     get '/bitcoin'
  #     expect(response).to have_http_status(200)
  #   end
  # end

  describe "GET #convert-bitcoin" do
    before do
      @amount = rand(1..9999)
    end
    it 'returns http success BTC x BRL' do
      get '/convert-bitcoin', params: {
                            source_currency: "BTC",
                            target_currency: "BRL",
                            amount: @amount
                            }
      expect(response).to have_http_status(200)
    end
    it 'returns http success BRL x BTC' do
      get '/convert-bitcoin', params: {
                            source_currency: "BRL",
                            target_currency: "BTC",
                            amount: @amount
                            }
      expect(response).to have_http_status(200)
    end
  end
end
