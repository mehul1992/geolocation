Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/', to: 'geolocation#index'
  get '/map', to: 'geolocation#map'
  post '/add_polygon', to: 'geolocation#add_polygon'
end
