# frozen_string_literal: true

Deface::Override.new(
  virtual_path: 'spree/admin/shared/sub_menu/_configuration',
  name: 'add_rich_editor_tab',
  insert_bottom: '[data-hook="admin_configurations_sidebar_menu"]',
  text: '<li<%== " class=\"sidebar-menu-item d-block w-100\"" %>><%= link_to Spree.t(:rich_editor), spree.edit_admin_editor_settings_path, class: "py-1 px-3 d-block sidebar-submenu-item"%></li>'
)
