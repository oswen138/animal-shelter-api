Rails.application.routes.draw do
  get 'home' => 'animals#index'

  resources :animals

  get 'animals/search', to: 'animals/#search'
  get 'animalType/random', to: 'animals#random'
end
