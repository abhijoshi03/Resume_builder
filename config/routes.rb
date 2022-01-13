Rails.application.routes.draw do
  root   'home#index'
  get    'edit'    => 'home#edit'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

  get 'signup' => 'users#new'
  post 'users' => 'users#create'

  resources :profiles , only: [:update]
  resources :educations , only: [:new]
  resources :experiences , only: [:new]
end
