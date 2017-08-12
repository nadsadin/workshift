Rails.application.routes.draw do
  get 'reports/index'

  get 'reports/employee_total'

  get 'reports/employee_detail'
  get 'reports/employee_detail_memo'

  get 'reports/location_total'

  get 'reports/location_detail'

  resources :expenses
  get 'home/show'
  root 'home#show'
  resources :work_shifts
  resources :locations
  resources :rates
  resources :employees
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
