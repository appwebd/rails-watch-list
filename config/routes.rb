Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # view
  #
  root to: 'lists#index'

  resources :lists do
    resources :bookmarks, only: %i[new create]
  end

  resources :movies # , only: %i[new create destroy]

  resources :bookmarks, only: :destroy
end

