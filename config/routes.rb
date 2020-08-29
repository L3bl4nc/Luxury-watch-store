Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  get "/watches", to: "watches#index"
  get "/watches/new", to: "watches#new"
  post "/watches", to: "watches#create"
  get "/watches/:id", to: "watches#show", as: "watch"

  get "/watches/:watch_id/purchase_requests/new", to: "purchase_requests#new"
  post "/watches/:watch_id/purchase_requests", to: "purchase_requests#create"
  get "/purchase_requests/owner", to: "purchase_requests#index_owner"
  get "/purchase_requests/buyer", to: "purchase_requests#index_buyer"
end
