Rails.application.routes.draw do
    #get 'welcome/index'
  devise_for :users
  #root :to => 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # the followed are routes for the user_controller
  get "all_users", to: "users#all_users", as: "all_users"
  patch "/users/:id/like", to: "users#follow", as: "follow"
  #get "/users/:id/dashboard", to: "users#dashboard", as: "user_dashboard"
  patch "/posts/:id/adds", to: "posts#adds", as: "adds"

  delete "/users/:id/unlike", to: "users#unfollow", as: "unfollow"
  get "/users/:id/dashboard", to: "users#dashboard", as: "user_dashboard"

  # the routes for category_controller
  get "/categories", to: "categories#index", as: "categories"
  get "/categories/:id", to: "categories#show", as: "category"
  post "/categories", to: "categories#create", as: "create_category"
  patch "/category/:id", to: "categories#update", as: "update_category"
  delete "/category/:id", to: "categories#destroy", as: "destroy_category"


  root :to => 'welcome#index'
end
