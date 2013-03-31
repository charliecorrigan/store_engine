StoreEngine::Application.routes.draw do
  resources :line_items

  resources :carts
  resources :products
  resources :categories

  resources :users
  resources :sessions

  get "admin" => "products#index", :as => "admin"
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  get "home/show"
  put 'product/:id/retire' => 'products#retire', :as => 'retire_product'
              

  root :to => 'home#show'
end
