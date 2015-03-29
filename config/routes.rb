Rails.application.routes.draw do
  get 'user/new'

  root             'pages#home'
  get 'blog'    => 'pages#blog'
  get 'about'   => 'pages#about'
  get 'contact' => 'pages#contact'

  get 'signup'  => 'users#new'

  resources :users

end