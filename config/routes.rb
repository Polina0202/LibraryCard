Rails.application.routes.draw do
    root "articles#index"
    get "/articles", to: "articles#index"
    get '/login', to: "login#index"
    get '/reader', to: "reader#reader"
    get '/staff', to: "staff#staff"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
