class ApplicationController < ActionController::Base
  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::RespondWith
  include Spree::Core::ControllerHelpers::SSL
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order

  helper Spree::BaseHelper
  helper Spree::StoreHelper
  helper Spree::CheckoutHelper
  helper Spree::OrdersHelper
  helper Spree::ProductsHelper
  helper Spree::PromotionRulesHelper
  helper Spree::TaxonsHelper

  protect_from_forgery

end
