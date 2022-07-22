Rails.application.routes.draw do
  root 'home#index'
  resources :users, param: :_username
  post "/login", to: "authentication#login"
  get '/*a', to: 'application#not_found'
end
