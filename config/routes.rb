Rails.application.routes.draw do
    #get 'welcome/index'
  devise_for :users
  #root :to => 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # the followed are routes for the user_controller
  get "all_users", to: "users#all_users", as: "all_users"
  patch "/users/:id/like", to: "users#follow", as: "follow"
  get "/users/:id/all_followers", to: "users#all_followers", as: "all_followers"

  root :to => 'welcome#index'
end
