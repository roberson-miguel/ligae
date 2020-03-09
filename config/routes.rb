Rails.application.routes.draw do
  root 'home#index'
  resources :taxes 
  resources :simulations do
    get 'search', on: :collection
  end

end
