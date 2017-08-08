Rails.application.routes.draw do
  get 'home/show'
  root 'home#show'
  resources :work_shifts
  resources :locations
  resources :rates
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
