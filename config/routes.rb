Rails.application.routes.draw do
  get 'admin_dashboard/index'
  devise_for :users

  # resources :subjects

  resources :subjects do
    member do
      get 'lecturers'
    end
  end

  resources :lecturers, only: [:index, :show, :new, :edit]

  resources :requests

  get '/get_lecturers', to: 'requests#get_lecturers'

  root "subjects#index"

  get "admin", to: "admin_dashboard#index"
  get "admin/reports", to: "admin_dashboard#reports"

end
