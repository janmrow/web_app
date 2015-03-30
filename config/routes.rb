Rails.application.routes.draw do
  get 'sessions/new'

  get 'user/new'

  root             'pages#home'
  get 'blog'    => 'pages#blog'
  get 'about'   => 'pages#about'
  get 'contact' => 'pages#contact'

  get 'signup'  => 'users#new'

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'


  resources :users

end