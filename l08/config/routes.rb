Rails.application.routes.draw do
  get '/rules', to: 'players#rules'
  get '/champions', to: 'players#champions'
  get '/home', to: 'players#home'
  get '/form', to: 'players#form'
  root 'players#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
