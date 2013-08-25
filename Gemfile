source 'https://rubygems.org'

########################################################################
#                                Rails                                 #
########################################################################

gem 'rails', '3.2.13'
gem 'mysql2'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'closure-compiler'
  gem 'yui-compressor'
end

########################################################################
#                             Application                              #
########################################################################
gem 'spree', '2.0.3'
gem 'spree_on_sale', path: 'extensions/spree_on_sale'
gem 'spree_gateway', :git => 'https://github.com/spree/spree_gateway.git', branch: '2-0-stable'
#gem 'spree_social', path: '../spree_social'
gem 'spree_social', :git => 'https://github.com/spree/spree_social.git', branch: '2-0-stable'
gem 'spree_paypal_express', :git => 'git://github.com/spree/spree_paypal_express.git', branch: '2-0-stable'
gem 'spree_comments', :github => 'spree/spree_comments'
gem 'spree_auth_devise', :git => 'https://github.com/spree/spree_auth_devise.git', branch: '2-0-stable'
gem 'spree_product_zoom', :git => 'git://github.com/spree/spree_product_zoom.git', branch: '2-0-stable'
gem 'spree_wishlist', :git => 'git://github.com/spree/spree_wishlist.git', branch: '2-0-stable'
gem 'spree_email_to_friend', :git => 'git://github.com/spree/spree_email_to_friend.git', branch: '2-0-stable'
gem 'spree_variant_options'

gem 'jquery-rails'
gem 'diffy'
gem 'settingslogic'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

########################################################################
#                             Deployment                               #
########################################################################
# Use unicorn as the app server
gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'
gem 'rvm-capistrano'

group :development do
  gem 'capistrano-unicorn', :require => false
end