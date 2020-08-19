Rails.application.routes.draw do
  namespace :api do
    resources :users
    resources :events
    resources :tickets
    post "users/login", to: "users#find_user", as: "find_user"
  end

  namespace :api do
    resources :bookmarks
  end
end
