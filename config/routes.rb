Rails.application.routes.draw do
  namespace :api do
    # Users
    post "/users" => "users#create"

    # Sessions
    post "/sessions" => "sessions#create"

  end
end
