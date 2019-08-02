Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:create,:show,:update,:destroy]
  get '/users', to: 'users#index'
  resources :artwork_shares, only:  [:index,:create,:show,:update,:destroy]
  resources :artworks, only:  [:index,:create,:show,:update,:destroy]
  get '/users/:id/artworks', to: 'artworks#index'
  resources :comments, only: [:index, :create, :destroy]
end
