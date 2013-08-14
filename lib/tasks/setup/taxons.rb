Gemador::Seeds.load_seed('taxonomies')
Gemador::Seeds.load_seed('products')

categories = Spree::Taxonomy.find_by_name!('Categories')
prices = Spree::Taxonomy.find_by_name!('Price')

products = {
  :ritani_diamond_semi_mount => 'Ritani Diamond Channel Set Semi Mount',
  :ritani_polished_solitare => 'Ritani Polished Solitaire Mounting with Half Bezel',
  :pink_evil_eye => 'Pink and White Evil Eye Pendant',
  :diamond_black_cross_pendant => 'Diamond and Black Cross Pendant',
  :diamond_pave_earrings => 'Diamond Pave Earrings',
  :large_scroll_circle_earring => 'Large Scroll Circle Earring',
  :oval_link_bracelet => 'Oval Link Bracelet',
  :diamond_station_bangle_bracelet => 'Diamond Station Bangle Bracelet',
  :cincinnati_reds_cufflinks => 'Cincinnati Reds Game Used Baseball Cufflinks',
  :diamond_sapphire_ring => 'Diamond and Sapphire Ring',
  :angled_black_diamond_ring => 'Angled Black Diamond Ring',
  :tw_steel_ceo_diver => 'TW STEEL CEO Diver CE5000',
  :raymond_weil_watch => 'RAYMOND WEIL Watch, Men\'s Swiss Tradition Black Leather Strap - OSU',
  :ohio_state_game_cufflinks => 'Ohio State Game Used Football Cufflinks'
}

products.each do |key, name|
  products[key] = Spree::Product.find_by_name!(name)
end

taxons = [
  {
    name: 'Categories',
    taxonomy: categories,
    position: 0
  },
  {
    name: 'Price',
    taxonomy: prices,
    position: 1
  },
  {
    name: 'Rings',
    taxonomy: categories,
    position: 0,
    parent: 'Categories',
    products: [
      products[:ritani_diamond_semi_mount],
      products[:ritani_polished_solitare],
      products[:diamond_sapphire_ring],
      products[:angled_black_diamond_ring]
    ]
  },
  {
    name: 'Engagement Rings',
    taxonomy: categories,
    position: 1,
    parent: 'Categories',
    products: [
      products[:ritani_diamond_semi_mount],
      products[:ritani_polished_solitare]
    ]
  },
  {
    name: 'Necklaces',
    taxonomy: categories,
    position: 2,
    parent: 'Categories',
    products: [
      products[:pink_evil_eye],
      products[:diamond_black_cross_pendant]
    ]
  },
  {
    name: 'Bracelets',
    taxonomy: categories,
    position: 3,
    products: [
      products[:oval_link_bracelet],
      products[:diamond_station_bangle_bracelet]
    ]
  },
  {
    name: 'Earrings',
    taxonomy: categories,
    position: 4,
    parent: 'Categories',
    products: [
      products[:diamond_pave_earrings],
      products[:large_scroll_circle_earring]
    ]
  },
  {
    name: 'Watches',
    taxonomy: categories,
    position: 5,
    parent: 'Categories',
    products: [
      products[:tw_steel_ceo_diver],
      products[:raymond_weil_watch]
    ]
  },
  {
    name: 'Gents',
    taxonomy: categories,
    position: 6,
    parent: 'Categories',
    products: [
      products[:ohio_state_game_cufflinks],
      products[:cincinnati_reds_cufflinks],
      products[:tw_steel_ceo_diver],
      products[:raymond_weil_watch]
    ]
  }
]

upto500 = {
    name: 'Up to $500',
    taxonomy: prices,
    position: 0,
    parent: 'Price',
    products: []
  }
upto1500 = {
    name: 'Up to $1500',
    taxonomy: prices,
    position: 1,
    parent: 'Price',
    products: []
  }
upto2500 = {
    name: 'Up to $2500',
    taxonomy: prices,
    position: 2,
    parent: 'Price',
    products: []
  }
over2500 = {
    name: 'Over $2500',
    taxonomy: prices,
    position: 3,
    parent: 'Price',
    products: []
  }

products.each do |key, product|
  if product.sale_price <= 500
    upto500[:products] << product
  end
  if product.sale_price <= 1500
    upto1500[:products] << product
  end
  if product.sale_price <= 2500
    upto2500[:products] << product
  end
  if product.sale_price > 2500
    over2500[:products] << product
  end
end

(taxons + [upto500, upto1500, upto2500, over2500]).each do |taxon_attrs|
  if taxon_attrs[:parent]
    taxon_attrs[:parent] = Spree::Taxon.find_by_name!(taxon_attrs[:parent])
  end
  Spree::Taxon.create!(taxon_attrs, :without_protection => true)
end



