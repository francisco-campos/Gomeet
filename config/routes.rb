Rails.application.routes.draw do
  devise_for :users, :controllers => {registrations: 'registrations', :omniauth_callbacks => 'users/omniauth_callbacks'}

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  get 'registro', to: 'registro#index'
  get '/lightbox-registro', to: 'login#index'
  get '/lightbox-registro/email', to: 'login#register_email'
  get '/lightbox-login', to: 'login#ingreso'

end
