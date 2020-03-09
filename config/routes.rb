Rails.application.routes.draw do
  root 'home#index'
  resources :taxes 
  resources :simulations
end
