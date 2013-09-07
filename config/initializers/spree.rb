# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  config.site_name = 'Gemador'
  config.default_seo_title = 'Gemador'
  config.default_meta_description = 'Gemador'
  config.default_meta_keywords = 'gemador,gemadore,gem,discount,jewelry'
  config.site_url = Settings.site_url
  config.layout = 'application'
  config.attachment_path = Settings.attachment_path
  config.attachment_default_url = Settings.attachment_default_url
  config.attachment_url = Settings.attachment_url
end

Spree.user_class = 'Spree::User'
#Spree::SocialConfig[:path_prefix] = '' # for /store/auth/:provider

require 'spree/product_filters'