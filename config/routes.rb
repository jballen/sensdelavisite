Rails.application.routes.draw do
  root 'static_pages#home'
  get 'signup'  => 'users#new'
  get 'about' => 'static_pages#about'
  get 'contact' => 'static_pages#contact'
  get 'privacy' => 'static_pages#privacy'
  get 'tos' => 'static_pages#tos'
  get 'articles' => 'articles#index'

  # Needed for facebook login
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  get 'signout', to: 'sessions#destroy', as: 'signout'

  # Resources
  resources :sessions, only: [:create, :destroy]
  resources :articles do
    resources :comments
  end
 
end
