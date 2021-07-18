class AdminPagesController < ApplicationController

  layout 'admin'

  def admin_home

    @menu_items = admin_menu

  end

  # Author tools

  def posts
    @menu_items = admin_menu('Posts')
  end

  def files
    @menu_items = admin_menu('Files')
  
  end

  def tags
    @menu_items = admin_menu('Tags')
  
  end

  # Admin tools

  def settings
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu
  
  end

  def users
    @menu_items = admin_menu('Users')
  
  end

  def menu_items
    @menu_items = admin_menu('Menu Items')
  
  end

  # Settings subpages

  def site_identity
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu('Site Identity')
  
  end

  def podcast_feed
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu('Podcast Feed')
  end
  

  def twitter
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu('Twitter')
  end
  

  def substack
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu('Substack')
  
  end



  # Helpers

  def admin_menu(selected = nil)

    [
      {
        label: 'Author Tools'
      },
      {
        label: 'Posts',
        path: admin_posts_path,
        selected: selected == 'Posts',
      },
      {
        label: 'Files',
        path: admin_files_path,
        selected: selected == 'Files',
      },
      {
        label: 'Tags',
        path: admin_tags_path,
        selected: selected == 'Tags',
      },
      {
        label: 'Admin Tools'
      },
      {
        label: 'Settings',
        path: admin_settings_path,
        selected: selected == 'Settings',
      },
      {
        label: 'Users',
        path: admin_users_path,
        selected: selected == 'Users',
      },
      {
        label: 'Menu Items',
        path: admin_menu_items_path,
        selected: selected == 'Menu Items',
      },
    ]

  end

  def admin_settings_menu(selected = nil)
    [
      {
        label: 'Site Identity',
        path: admin_settings_site_identity_path,
        selected: selected == 'Site Identity',
      },
      {
        label: 'Podcast Feed',
        path: admin_settings_podcast_feed_path,
        selected: selected == 'Podcast Feed',
      },
      {
        label: 'Twitter',
        path: admin_settings_twitter_path,
        selected: selected == 'Twitter',
      },
      {
        label: 'Substack',
        path: admin_settings_substack_path,
        selected: selected == 'Substack',
      },

    ]
  end

end
