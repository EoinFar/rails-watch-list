Rails.application.routes.draw do
  root "lists#index"
  # get 'bookmarks/new'
  # get 'lists/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:new, :create]
  end
  # Defines the root path route ("/")
  resources :bookmarks, only: [:destroy]
end
