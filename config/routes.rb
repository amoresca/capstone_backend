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
    get "/friendships" => "friendships#index"
    post "/friendships" => "friendships#create"
    patch "/friendships/:id" => "friendships#update"
    delete "/friendships/:id" => "friendships#destroy"

    # Items
    get "/items" => "items#index"
    post "/items" => "items#create"
    patch "/items/:id" => "items#update"
    delete "/items/:id" => "items#destroy"

    # Categories
    get "/categories" => "categories#index"

    # BorrowRequests
    get "/borrow-requests" => "borrow_requests#index"
    post "/borrow-requests" => "borrow_requests#create"
    patch "/borrow-requests/:id" => "borrow_requests#update"
  end
end
