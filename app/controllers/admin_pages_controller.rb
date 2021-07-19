class AdminPagesController < AdminController

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

end
