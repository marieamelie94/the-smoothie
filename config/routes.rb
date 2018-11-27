Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get '/pages/home' => 'pages#home'
  get '/pages/:page' => 'pages#show'
  get '/preferences' => 'preferences#edit'

  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

