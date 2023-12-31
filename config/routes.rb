Rails.application.routes.draw do
  get 'items/index2'
  get 'items/new'
  get 'items/create'
  get 'items/show'
  get 'avatars/index'
  get 'pages/index'
  resources :items, only: [:index2, :new, :create, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   root "items#new"
end
