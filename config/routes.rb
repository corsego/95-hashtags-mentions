Rails.application.routes.draw do
  resources :posts
  root to: redirect("/posts")
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
