module Spree
  class Gateway::Bogus < Gateway

    def capture(money, credit_card, gateway_options)
      ActiveMerchant::Billing::Response.new(true, 'Bogus Gateway: Forced success', {}, :test => true, :authorization => '67890')
    end

  end
end