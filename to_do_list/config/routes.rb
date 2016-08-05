Rails.application.routes.draw do
  get 'listup' => 'lists#new'
  
  get 'cardup' => 'cards#new'

  get 'password_resets/new'

  get 'password_resets/edit'

  get 'signup' => 'users#new'

  get 'contact' => 'pages#contact'

  get 'help' => 'pages#help'

  get 'show_list' => 'lists#show'
  
  # get 'user_lists' => 'users#show'

  root 'pages#home'

  get 'login' => 'sessions#new'
  
  post 'login' => 'sessions#create'

  delete 'logout' => 'sessions#destroy'

  resources :users
  
  resources :lists
  
  resources :cards

  resources :account_activations, only: [:edit]

  resources :password_resets, only: [:new, :create, :edit, :update]
end
