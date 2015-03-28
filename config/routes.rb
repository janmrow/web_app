Rails.application.routes.draw do
  root             'pages#home'
  get 'blog'    => 'pages#blog'
  get 'about'   => 'pages#about'
  get 'contact' => 'pages#contact'
end