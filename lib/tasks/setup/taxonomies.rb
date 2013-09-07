# Setup initial Taxonomy Sections
taxonomies = [
  { name: "Categories" }
]
taxonomies.each do |tax|
  Spree::Taxonomy.create!(tax)
end