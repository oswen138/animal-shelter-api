Rails.application.routes.draw do
  resources :cats
  resources :dogs

  get 'cat/search', to: 'cats#search'
  get 'cat/random', to: 'cats#random'
 
  get 'dog/search', to: 'dogs#search'
  get 'dog/random', to: 'dogs#random'
end
