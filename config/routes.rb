Rails.application.routes.draw do
  resources :users

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'core_pages#public_home'

  get '/temp_page', to: 'core_pages#temp_page'

  get '/admin', to: 'admin_pages#admin_home'

  scope 'admin', as: :admin do
    get 'posts', to: 'admin_pages#posts'
    get 'files', to: 'admin_pages#files'
    get 'tags', to: 'admin_pages#tags'
    get 'settings', to: 'admin_pages#settings'
    get 'users', to: 'admin_pages#users'
    get 'menu_items', to: 'admin_pages#menu_items'

    scope 'settings', as: :settings do
      get 'site_identity', to: 'admin_pages#site_identity'
      get 'podcast_feed', to: 'admin_pages#podcast_feed'
      get 'twitter', to: 'admin_pages#twitter'
      get 'substack', to: 'admin_pages#substack'
    end
    
  end





end
