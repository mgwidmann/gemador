module Spree

  Image.class_eval do
    # Move images under /system so that they are automatically symlinked by capistrano (deployments wont erase them then!)
    has_attached_file :attachment,
      styles: { mini: '48x48>', small: '100x100>', product: '240x240>', large: '600x600>' },
      default_style: :product,
      url: '/system/spree/products/:id/:style/:basename.:extension',
      path: ':rails_root/public/system/spree/products/:id/:style/:basename.:extension',
      convert_options: { all: '-strip -auto-orient -colorspace RGB' }

  end

end