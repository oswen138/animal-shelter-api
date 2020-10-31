Rails.application.routes.draw do
<<<<<<< HEAD
  get 'home' => 'animals#index'

  resources :animals

  get 'animals/search', to: 'animals/#search'
  get 'animalType/random', to: 'animals#random'
=======
  resources :cats
  resources :dogs

  get 'cat/search', to: 'cats#search'
  get 'cat/random', to: 'cats#random'
 
  get 'dog/search', to: 'dogs#search'
  get 'dog/random', to: 'dogs#random'
>>>>>>> b3f2ed13bb579a47fd45b39626c2e6f3bee40e9e
end
