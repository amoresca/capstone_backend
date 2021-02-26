Rails.application.routes.draw do
  namespace :api do
    # Users
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:username" => "users#show"
    patch "/users/:username" => "users#update"
    delete "/users/:username" => "users#destroy"

    # Sessions
    post "/sessions" => "sessions#create"

    # Friendships
    

    # Items
    get "/items" => "items#index"
    post "/items" => "items#create"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"

    # Categories
    get "/categories" => "categories#index"
  end
end
