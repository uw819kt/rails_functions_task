Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create, :show]
  root to:"sessions#new"
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
