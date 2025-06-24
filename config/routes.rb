Rails.application.routes.draw do
  root "home#index"
  get "/login", to: "sessions#login"
  get "/auth/callback", to: "sessions#callback"
  delete "/logout", to: "sessions#logout"

  get "up" => "rails/health#show", as: :rails_health_check
end
