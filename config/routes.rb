Rails.application.routes.draw do
  resources :restaurants do
    resources :reviews, only: [ :index, :show, :new, :create ]
  end
  resources :reviews, only: [ :index, :show, :new, :create ]
  end
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

