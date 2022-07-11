Rails.application.routes.draw do
  get 'browse', to:'browse#browse', as: 'browse'
  put 'events/:id/cancel', to: 'events#cancel_event', as: 'cancel_event'
  resources :events, except: :index
  get 'about', to:'pages#about', as: 'about'
  get 'help', to: 'pages#help', as: 'help'
  get 'host', to: 'pages#host', as: 'host'
  get 'wallet', to: 'tickets#wallet', as: 'wallet'
  get 'calendar', to: 'pages#calendar', as: 'calendar'
  devise_for :users
  root 'pages#home'
  post 'events/:id/book', to: 'events#book_ticket', as: 'book_ticket'
  get 'tickets/:secret', to: 'tickets#validate', as: 'ticket_validation'
  get "payments/success", to: "payments#success"
  post "/payments/webhook", to: "payments#webhook"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
