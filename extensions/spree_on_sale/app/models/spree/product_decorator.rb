module Spree
  Product.class_eval do
    delegate_belongs_to :master, :sale_price

    attr_accessible :sale_price

    alias_method :mod_sale_price=, :sale_price=

    def sale_price= price
      self.mod_sale_price = parse_price(price)
    end

    def parse_price(price)
      return price unless price.is_a?(String)

      separator, delimiter = I18n.t([:'number.currency.format.separator', :'number.currency.format.delimiter'])
      non_price_characters = /[^0-9\-#{separator}]/
      price.gsub!(non_price_characters, '') # strip everything else first
      price.gsub!(separator, '.') unless separator == '.' # then replace the locale-specific decimal separator with the standard separator if necessary

      price.to_d
    end

  end
end