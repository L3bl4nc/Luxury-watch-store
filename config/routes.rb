Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "/watches", to: "watches#index"
  get "/watches/new", to: "watches#new"
  post "/watches", to: "watches#create"
  get "/watches/:id", to: "watches#show"

  get "/watches/:watch_id/purchase-requests/new", to: "purchase-requests#new"
  post "/watches/:watch_id/purchase-requests", to: "purchase-requests#create"
  get "/purchase-requests/owner", to: "purchase-requests#index_owner"
  get "/purchase-requests/buyer", to: "purchase-requests#index_buyer"

#   /watches  GET watches index
# /watches/new  GET watches new
# /watches  POST  watches create
# /watches/:id  GET watches show

# /watches/:watch_id/purchase-requests/new  GET purchase_requests new
# /watches/:watch_id/purchase-requests  POST  purchase_requests create
# /purchase-requests/owner  GET purchase_requests index_owner
# /purchase-requests/buyer  GET purchase_requests index_buyer
end
