Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'patients#index'

  resources :patients, only: [:index] do
    resource :facility, only: [:show]
  end
end
