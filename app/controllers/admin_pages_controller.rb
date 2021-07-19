class AdminPagesController < AdminController

  def admin_home
    authenticate_user!
    @menu_items = admin_menu
  end

  # Author tools

  def posts
    authenticate_user!
    permit_roles ['author', 'admin']
    @menu_items = admin_menu('Posts')
  end

  def files
    authenticate_user!
    permit_roles ['author', 'admin']
    @menu_items = admin_menu('Files')
  end

  def tags
    authenticate_user!
    permit_roles ['author', 'admin']
    @menu_items = admin_menu('Tags')
  end

  # Admin tools

  def settings
    authenticate_user!
    permit_roles ['admin']
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu
  end

  def users
    authenticate_user!
    permit_roles ['admin']
    @menu_items = admin_menu('Users')
  end

  def menu_items
    authenticate_user!
    permit_roles ['admin']
    @menu_items = admin_menu('Menu Items')
  end

  # Settings subpages

  def site_identity
    authenticate_user!
    permit_roles ['admin']
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu('Site Identity')
  end

  def podcast_feed
    authenticate_user!
    permit_roles ['admin']
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu('Podcast Feed')
  end

  def twitter
    authenticate_user!
    permit_roles ['admin']
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu('Twitter')
  end
  
  def substack
    authenticate_user!
    permit_roles ['admin']
    @menu_items = admin_menu('Settings')
    @submenu_items = admin_settings_menu('Substack')
  end

end
