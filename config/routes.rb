Rails.application.routes.draw do
  get 'lists', to: 'lists#index'
  get 'lists/index', to: 'lists#index'
  get 'lists/show'
  get 'lists/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # view

end
