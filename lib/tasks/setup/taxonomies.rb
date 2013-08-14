# Setup initial Taxonomy Sections
taxonomies = [
  { name: "Categories" },
  { name: "Price" }
]
taxonomies.each do |tax|
  Spree::Taxonomy.create!(tax)
end