require 'tasks/gemador/seeds'

namespace :gemador do
  desc "Initial Gemador Store Configuration and Setup"
  task setup: :environment do
    Gemador::Seeds.load_seed('taxons')
    Gemador::Seeds.load_seed('assets')
    puts "All Gemador content loaded."
  end
  task setup: :teardown

  desc "Destroys all Gemador specific content (An undo for setup)"
  task teardown: :environment do
    Spree::Taxonomy.all.map(&:destroy)
    Spree::Taxon.all.map(&:destroy)
    Spree::Product.all.map(&:destroy)
    tax = Spree::TaxCategory.find_by_name('Jewelry')
    if tax
      tax.destroy
    end
    shipping = Spree::ShippingCategory.find_by_name('Jewelry')
    if shipping
      shipping.destroy
    end
    puts "All Gemador content removed."
  end
end