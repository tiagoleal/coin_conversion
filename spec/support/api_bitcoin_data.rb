RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, /api.coindesk.com/ )
    .with(headers: {
      'Accept' => '*/*'
    }).to_return(status: 200, body:'
      {
        "time": {
          "updated": "Dec 27, 2018 16:22:00 UTC",
          "updatedISO": "2018-12-27T16:22:00+00:00",
          "updateduk": "Dec 27, 2018 at 16:22 GMT"
        },
        "disclaimer": "This data was produced from the CoinDesk Bitcoin Price Index (USD). Non-USD currency data converted using hourly conversion rate from openexchangerates.org",
        "bpi": {
          "USD": {
            "code": "USD",
            "rate": "3,789.0350",
            "description": "United States Dollar",
            "rate_float": 3789.035
          },
          "BRL": {
            "code": "BRL",
            "rate": "14,802.3688",
            "description": "Brazilian Real",
            "rate_float": 14802.3688
          }
        }
      }', headers:{})
  end
end
