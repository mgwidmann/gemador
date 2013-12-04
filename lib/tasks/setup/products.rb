Gemador::Seeds.load_seed('tax_categories')
Gemador::Seeds.load_seed('shipping_categories')

jewelry = Spree::TaxCategory.find_by_name!('Jewelry')
default_shipping_category = Spree::ShippingCategory.find_by_name!('Jewelry')

default_attrs = {
  available_on: Time.zone.now,
  shipping_category: default_shipping_category
}

products = [
  {
    name: 'Ritani Diamond Channel Set Semi Mount',
    description: 'Diamond channel set semi mount featuring six round cut diamonds. Classic mounting holds 1.0 carat center. 18k white gold. 0.39 total carat weight,
G-H/SI clarity. From Ritani, this piece features a diamond channel set semi mount featuring six round cut diamonds. Classic mounting holds 1.0 carat center. 18k white gold. 0.39 total carat weight, G-H/SI clarity.',
    permalink: 'ritani-diamond-channel-set-semi-mount',
    sku: '364508',
    tax_category: jewelry,
    price: 3190.00,
    sale_price: 1914.00
  },
  {
    name: 'Ritani Polished Solitaire Mounting with Half Bezel',
    description: 'Polished solitaire mounting with half bezel head. Holds 0.70 round center stone. 18k white gold. A gorgeous piece from Ritani, this mounting highlights a polished solitaire mounting with half bezel head. Holds 0.70 round center stone. 18k white gold.',
    permalink: 'ritani-polished-solitaire-mounting-with-half-bezel',
    sku: '364512',
    tax_category: jewelry,
    price: 2045.00,
    sale_price: 1227.00
  },
  {
    name: 'Pink and White Evil Eye Pendant',
    description: 'Pink and white enamel diamond evil eye pendant. 0.18 total carat weight, H/VS clarity. 18k two toned gold. An original design from James Free, featuring a pink and white enamel diamond evil eye pendant. 0.18 total carat weight, H/VS clarity. 18k two toned gold.',
    permalink: 'pink-and-white-evil-eye-pendant',
    sku: '132050',
    tax_category: jewelry,
    price: 1485.00,
    sale_price: 594.00
  },
  {
    name: 'Diamond and Black Cross Pendant',
    description: '18k white gold small black onyx cross diamond pendant. 0.38 total carat weight, G-H/SI clarity. A gorgeous piece from James Free, 18k white gold small black onyx cross diamond pendant. 0.38 total carat weight, G-H/SI clarity.',
    permalink: 'black-cross-pendant',
    sku: '132277',
    tax_category: jewelry,
    price: 2980.00,
    sale_price: 1192.00
  },
  {
    name: 'Diamond Pave Earrings',
    description: 'Tempia pave diamond earrings. 0.84 total carat weight, G-H/SI clarity. 18k yellow gold. From James Free, tempia pave diamond earrings. 0.84 total carat weight. G-H/SI clarity. 18k yellow gold.',
    permalink: 'diamond-pave-earrings',
    sku: '151008',
    tax_category: jewelry,
    price: 5835.00,
    sale_price: 1750.50
  },
  {
    name: 'Large Scroll Circle Earring',
    description: 'Sterling silver and rhodium dangle scroll work round circle earrings. 45mm, large. These fun earrings from James Free feature scroll work on a large round circle. 45mm. Sterling silver and rhodium.',
    permalink: 'large-scroll-circle-earring',
    sku: '3411719',
    tax_category: jewelry,
    price: 390.00,
    sale_price: 195.00
  },
  {
    name: 'Oval Link Bracelet',
    description: 'Eight inch, Sterling silver oval link black oval bracelet.',
    permalink: 'ritani-diamond-channel-set-semi-mount',
    sku: '3410811',
    tax_category: jewelry,
    price: 135.00,
    sale_price: 67.50
  },
  {
    name: 'Diamond Station Bangle Bracelet',
    description: 'Diamond station bangle bracelet. 1.11 total carat weight, G-H/SI clarity. 18k white gold.',
    permalink: 'oval-link-bracelet',
    sku: '181603',
    tax_category: jewelry,
    price: 8100.00,
    sale_price: 3240.00
  },
  {
    name: 'Cincinnati Reds Game Used Baseball Cufflinks',
    description: 'These game used baseball cufflinks are from an actual Cincinnati Reds game. Each pair is authenticated under the auspices of the MLB Authentication Program and
 carries a uniquely numbered hologram that allows fans to verify their item at <a href="http://www.mlb.com">MLB.com</a>. The hologram allows you to go to the MLB site,
enter the hologram number and see the details from the game. What team was played, the date, the players, the scores, everything every sports fan loves. The ultimate gift for the Cincinnati Reds fan!',
    permalink: 'cincinnati-reds-cufflinks',
    sku: '260758',
    tax_category: jewelry,
    price: 170.00,
    sale_price: 150.00
  },
  {
    name: 'Diamond and Sapphire Ring',
    description: 'Diamond and sapphire ring. 0.26 total carat weight, G-H/SI clarity. 18k white gold. Ring size 5.',
    permalink: 'diamond-sapphire-ring',
    sku: '060736',
    tax_category: jewelry,
    price: 1080.00,
    sale_price: 432.00
  },
  {
    name: 'Angled Black Diamond Ring',
    description: 'Angled black pave diamond ring. 0.54 total carat weight, G-H/SI clarity. 18k white gold. This modern piece from features an angled black pave diamond ring. 0
.54 total carat weight, G-H/SI clarity. 18k white gold. Ring size 5.5.',
    permalink: 'angled-black-diamond-ring',
    sku: '011792',
    tax_category: jewelry,
    price: 3245.00,
    sale_price: 1298.00
  },
  {
    name: 'TW STEEL CEO Diver CE5000',
    description: 'CEO Diver TW STEEL 44mm Steel Case Watch Black Dial CE5000 with black silicon strap. Swiss-Automatic movement. Scratch-resistant sapphire crystal. Water resistance tested at 100 meters.',
    permalink: 'twl-steel-ceo-diver-ce5000',
    sku: '303293',
    tax_category: jewelry,
    price: 1295.00,
    sale_price: 1099.00
  },
  {
    name: 'RAYMOND WEIL Watch, Men\'s Swiss Tradition Black Leather Strap - OSU',
    description: 'Black leather strap with traditional buckle. Round stainless steel case, 40mm. Sapphire crystal. Swiss quartz movement. Water resistant to 100 meters. Ohio
State Logo on white face.',
    permalink: 'raymond-weil-watch-swiss-tradition-black-leather-strap-osu',
    sku: '332880',
    tax_category: jewelry,
    price: 750.00,
    sale_price: 699.00
  },
  {
    name: 'Ohio State Game Used Football Cufflinks',
    description: 'If you are a Buckeye fan, or know one, these are a must. These Ohio State Helmet Cuff Links are made from Authentic Game-Used Helmets. Cuff links are made with sterling silver findings with the school name stamped on the back',
    permalink: 'ohio-state-game-used-football-cufflinks',
    sku: '260756',
    tax_category: jewelry,
    price: 170.00,
    sale_price: 150.00
  }
]

Spree::Config[:currency] = "USD"
products.each do |product_attrs|
  product = Spree::Product.create!(default_attrs.merge(product_attrs), :without_protection => true)
  product.shipping_category = default_shipping_category
  product.save!
end

Spree::Config[:currency] = "USD"