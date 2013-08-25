require 'tasks/gemador/seeds'

namespace :gemador do
  desc "Initial Gemador Store Configuration and Setup"
  task setup: :environment do
    Gemador::Seeds.load_seed('taxons')
    Gemador::Seeds.load_seed('assets')
    Gemador::Seeds.load_seed('stock')
    Gemador::Seeds.load_seed('shipping_methods')
    puts "All Gemador content loaded."
  end
  task setup: :teardown

  desc "Destroys all Gemador specific content (An undo for setup)"
  task teardown: :environment do
    unless Rails.env.production?
      Spree::Taxonomy.all.map(&:destroy)
      Spree::Taxon.all.map(&:destroy)
      Spree::Product.all.map(&:destroy)
      Spree::Order.all.map(&:destroy)
      tax = Spree::TaxCategory.find_by_name('Jewelry')
      if tax
        tax.destroy
      end
      shipping = Spree::ShippingCategory.find_by_name('Jewelry')
      if shipping
        shipping.destroy
      end
      Spree::StockLocation.all.map(&:destroy)
      Spree::StockMovement.all.map(&:destroy)
      Spree::Calculator::FlatRate.all.map(&:destroy)
      Spree::ShippingMethod.all.map(&:destroy)

      puts "All Gemador content removed."
    end
  end
end