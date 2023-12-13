Rails.application.routes.draw do
  resources :treaties
  resources :officials
  resources :member_state_areas
  resources :member_states
  resources :areas
  resources :political_parties
  resources :political_groups
  resources :institutions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
