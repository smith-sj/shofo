Rails.application.routes.draw do
  get 'browse', to:'browse#browse', as: 'browse'


  put 'events/:id/cancel', to: 'events#cancel_event', as: 'cancel_event'

  resources :events
  get 'about', to:'pages#about', as: 'about'
  get 'mission', to:'pages#mission', as: 'mission'
  get 'help', to: 'pages#help', as: 'help'
  get 'host', to: 'pages#host', as: 'host'
  get 'wallet', to: 'pages#wallet', as: 'wallet'
  get 'calendar', to: 'pages#calendar', as: 'calendar'

  resources :addresses
  devise_for :users
  root 'pages#home'

  post 'events/:id/book', to: 'events#book_ticket', as: 'book_ticket'

  get 'pages/booking_success', to: 'pages#booking_success', as: 'booking_success'

  get 'tickets/:secret', to: 'tickets#validate', as: 'ticket_validation'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
