Rails.application.routes.draw do
  get 'reviews/create'
  get 'reviews/new'
  get 'reviews/index'
  get 'reviews/show'
  get 'restaurants/create'
  get 'restaurants/new'
  get 'restaurants/index'
  get 'restaurants/show'
  resources :restaurants, only: [:create, :new, :index, :show] do
    resources :reviews, only: [:create, :new, :index]
  end
  resources :reviews, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
