Gemador::Seeds.load_seed("variants")

location = Spree::StockLocation.first_or_create! name: 'Gemador'
location.active = true
location.country =  Spree::Country.where(iso: 'US').first
location.save!

Spree::Variant.all.each do |variant|
  variant.stock_items.each do |stock_item|
    Spree::StockMovement.create(:quantity => 0, :stock_item => stock_item)
    stock_item.backorderable = true
    stock_item.save!
  end
end