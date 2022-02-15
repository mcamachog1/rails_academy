Rails.application.routes.draw do
  resources :payment_by_students
  resources :payments
  resources :pays
  get 'home/index'
  resources :tutorings
  resources :students
  resources :tutors
  resources :parents
  root 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
