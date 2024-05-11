Rails.application.routes.draw do
  get 'salary_checks/index'
  get 'salary_checks/show'
  get 'salary_checks/edit'
  get 'salary_checks/destroy'
  root "salaries#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :salaries
  
end
