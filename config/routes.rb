Rails.application.routes.draw do
  devise_for :users
  resources :treaties
  resources :officials
  resources :member_state_areas
  resources :member_states
  resources :areas
  resources :political_parties
  resources :political_groups
  resources :institutions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # API
  namespace :api do
    namespace :v1 do
      resources :areas
      resources :institutions
      resources :member_states
      resources :officials
      resources :political_groups
      resources :political_parties
      resources :treaties
    end
  end

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "home#index"
  get 'home', to: 'home#index'
end
