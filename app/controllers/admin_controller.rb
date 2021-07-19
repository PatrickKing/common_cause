
class AdminController < ApplicationController

  layout 'admin'


  # Helpers

  def permit_roles(roles = [])

    unless roles.include? current_user.role
      redirect_to :admin, alert: "You aren't authorized to view that page."
    end

  end

  def admin_menu(selected = nil)

    menu_items = [
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
      }
    ]

    if current_user.role == 'admin'
      menu_items += [
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

    menu_items

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
