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

  end
end
