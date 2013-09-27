module Spree

  Variant.class_eval do
    alias_method :orig_price_in, :price_in

    def price_in currency, force_original = false
      return orig_price_in(currency) if sale_price.blank? || Spree::User.current.nil? || force_original
      Spree::Price.new(variant_id: self.id, amount: self.sale_price, currency: currency)
    end
  end

end