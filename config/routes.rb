Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :events
    resources :tickets
    post "users/login", to: "users#find_user", as: "find_user"
    post "users/register", to: "users#create", as: "register"
  end
end
