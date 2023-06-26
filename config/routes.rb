Rails.application.routes.draw do
  resources :services, only: [:new, :create, :index]
  match 'services/price_calculator', to: 'services#price_calculator', via: [:get, :post]
  # get '/services/price_calculator', to: 'services#price_calculator', as: 'price_calculator_services'
  # post '/services/calculate_price', to: 'services#calculate_price', as: 'calculate_price_services'
end
