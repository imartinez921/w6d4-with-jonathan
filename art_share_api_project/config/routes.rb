Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: [:show, :index, :create, :update, :destroy] do 
    resources :artworks, only: [:index] 
  end
  resources :artwork_shares, only: [:create, :destroy]
  resources :artworks, only: [:show, :create, :update, :destroy]
  resources :comments, only: [:index, :create, :destroy]
  # get 'users/:id', to: 'users#show', as: 'user'
  # get 'users', to: 'users#index'
  # post 'users', to: 'users#create'
  # patch 'users/:id', to: 'users#update'
  # put 'users/:id', to: 'users#update'
  # delete 'users/:id', to: "users#destroy"


end
