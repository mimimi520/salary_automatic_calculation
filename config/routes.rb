Rails.application.routes.draw do

  root "salaries#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :salaries
  resources :salary_checks
end
