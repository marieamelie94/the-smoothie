Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  root to: 'pages#home'
  get '/pages/home' => 'pages#home'
  get '/pages/:page' => 'pages#show', as: :page
  get '/preferences' => 'preferences#edit'

  resources :allergies, only: [:new, :create]
  resources :users, only: [:show, :edit, :update]
  resources :orders do
    resources :payments, only: [:new, :create]
  end
  get '/smoothies/:order_id/configure', to: 'orders#configure', as: :order_configure
  post '/orders/:order_id/add_items', to: 'orders#add_items', as: :order_add_items
  get '/orders/:order_id/confirmation', to: 'orders#confirmation', as: :order_confirmation
  post '/orders/:order_id/delivery_info', to: 'orders#delivery_info', as: :order_delivery_info
  get '/smoothies/choose-amount' => 'orders#choose_amount'
  resources :smoothies, only: [:index, :show, :edit, :update]


    # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

