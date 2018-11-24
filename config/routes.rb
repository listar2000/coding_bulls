Rails.application.routes.draw do
  devise_for :users
  root :to => 'posts#index'
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "all_users", to: "posts#all_users", as: "all_users"
end
