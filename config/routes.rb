Rails.application.routes.draw do
  resources :events
  get 'about', to:'pages#about', as: 'about'
  get 'mission', to:'pages#mission', as: 'mission'
  get 'browse', to:'pages#browse', as: 'browse'
  get 'help', to: 'pages#help', as: 'help'
  get 'host', to: 'pages#host', as: 'host'
  get 'wallet', to: 'pages#wallet', as: 'wallet'
  get 'calendar', to: 'pages#calendar', as: 'calendar'


  resources :addresses
  devise_for :users
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
