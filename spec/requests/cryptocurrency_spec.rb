require 'rails_helper'

RSpec.describe CryptocurrencyController, type: :request do
  it "check specific_info" do
    sleep 1 # because of Nomics free plan: 1 request per second only :(
    get "/full_info", params: {cc_tickers: ["BTC"]}
    expect(@response).to have_http_status(200)
  end
  
  it "check specific_info" do
    sleep 1 # because of Nomics free plan: 1 request per second only :(
    get "/specific_info", params: {cc_tickers: ["ETH"], fields: ["id"]}
    expect(@response).to have_http_status(200)
  end
  
  it "check specific_info" do
    sleep 1 # because of Nomics free plan: 1 request per second only :(
    get "/convert_cc_to_fiat", params: {cc_ticker: "ETH", fiat_ticker: "RUB", amount: 3}
    expect(@response).to have_http_status(200)
  end
  
  it "check specific_info" do
    sleep 1 # because of Nomics free plan: 1 request per second only :(
    get "/convert_cc_to_cc", params: {cc_from_ticker: "ETH", cc_to_ticker: "ADA", amount: 5}
    expect(@response).to have_http_status(200)
  end
end
