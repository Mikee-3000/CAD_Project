Rails.application.routes.draw do
  resources :officials
  resources :member_states
  resources :schengen_areas
  resources :euro_areas
  resources :treaties
  resources :political_parties
  resources :political_groups
  resources :institutions
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
