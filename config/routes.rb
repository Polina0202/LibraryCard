Rails.application.routes.draw do
    root "articles#index"
    get "/articles", to: "articles#index"
    get '/login', to: "login#index"
    get '/reader', to: "reader#reader"
    get '/staff', to: "staff#staff"

    resources :books
    resources :authors
end
