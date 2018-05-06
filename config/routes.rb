Rails.application.routes.draw do
  root to: "products#index"

  resources :products
  resources :order_items
  resource :cart, only: [:show]
  resources :charges
  
  get '/sign_up' => 'users#new'
  post '/users' => 'users#create'

  get '/sign_in' => 'sessions#new'
  post '/sign_in' => 'sessions#create'
  get 'sign_out' => 'sessions#destroy'

  get 'finalize' => 'carts#finalize'

end
