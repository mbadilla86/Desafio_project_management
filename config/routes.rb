Rails.application.routes.draw do

  get 'dashboard', to: 'projects#index'
  root 'projects#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
