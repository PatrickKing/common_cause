Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'core_pages#public_home'

  get '/temp_page', to: 'core_pages#temp_page'

  get '/admin', to: 'admin_pages#admin_home'


  get '/admin/posts', to: 'admin_pages#posts'
  get '/admin/files', to: 'admin_pages#files'
  get '/admin/tags', to: 'admin_pages#tags'
  get '/admin/settings', to: 'admin_pages#settings'
  get '/admin/users', to: 'admin_pages#users'
  get '/admin/menu_items', to: 'admin_pages#menu_items'

  get '/admin/settings/site_identity', to: 'admin_pages#site_identity'
  get '/admin/settings/podcast_feed', to: 'admin_pages#podcast_feed'
  get '/admin/settings/twitter', to: 'admin_pages#twitter'
  get '/admin/settings/substack', to: 'admin_pages#substack'



end
