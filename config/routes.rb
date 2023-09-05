Rails.application.routes.draw do
  get "/plants" => "plants#index"
  get "/plants/:id" => "plants#show"
  post "/plants" => "plants#create"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
