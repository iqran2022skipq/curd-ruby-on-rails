Rails.application.routes.draw do
  # get 'articles/index'
  # get 'articles/show'
  # get 'articles/edit'
  # get 'articles/new'
  # get 'articles/delete'
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
