Rails.application.routes.draw do
    root "articles#index"
    get "/articles", to: "articles#index"

    resources :books
    resources :authors

    resources :readers
    resources :libraries
    resources :cards
    resources :card_books
end
