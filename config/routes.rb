Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    root to: 'dashboards#index'
    resources :users, only: %i[index show edit update]
    resources :manuals, only: %i[index new show create edit update destroy]
    resources :categories, except: [:new, :show]
    patch "withdrawal/:id" => "users#withdrawal", as: "withdrawal"
  end
  resources :manuals, only: %i[index new ]
  root "manuals#index"

end
