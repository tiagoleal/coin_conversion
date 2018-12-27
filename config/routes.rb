Rails.application.routes.draw do
  # get 'bitcoin', to: 'exchange_bitcoin#index'
  root 'exchanges#index'
  get 'convert', to: 'exchanges#convert'
  get 'convert-bitcoin', to: 'exchange_bitcoin#convert'
end
