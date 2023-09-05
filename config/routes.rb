Rails.application.routes.draw do
  get "/plants" => "plants#index"
  get "/plants/:id" => "plants#show"

  get "/schedules" => "schedules#index"
  get "/schedules/:id" => "schedules#show"
  post "/schedules" => "schedules#create"

  post "/users" => "users#create"

  post "/sessions" => "sessions#create"
end
