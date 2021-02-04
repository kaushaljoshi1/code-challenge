Rails.application.routes.draw do
  resources :employees
  resources :departments, only: [:index, :show]
  resources :owners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "pages#home"

  resources :companies

  get "owner_search", controller: :owners, action: :search
end
