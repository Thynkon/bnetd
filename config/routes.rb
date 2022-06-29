Rails.application.routes.draw do
  root "dashboard#index"

  devise_scope :user do
    get "sign_in", to: "devise/sessions#new"
    get "sign_out", to: "devise/sessions#destroy"
  end

  devise_for :users
  resources :users
  resources :bans
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
