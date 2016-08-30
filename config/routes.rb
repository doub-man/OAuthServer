Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper

  resources :home, only: [:index]
  root 'home#index'

  namespace :api do
    get '/me' => "credentials#me"
  end

end
