Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'core_pages#public_home'

  get '/temp_page', to: 'core_pages#temp_page'

  get '/admin', to: 'admin_pages#admin_home'




end
