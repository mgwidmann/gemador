Gemador::Seeds.load_seed('products')
#Gemador::Seeds.load_seed('variants')

products = {}
products[:ritani_diamond_semi_mount] = Spree::Product.find_by_name!('Ritani Diamond Channel Set Semi Mount')
products[:ritani_polished_solitare] = Spree::Product.find_by_name!('Ritani Polished Solitaire Mounting with Half Bezel')
products[:pink_evil_eye] = Spree::Product.find_by_name!('Pink and White Evil Eye Pendant')
products[:diamond_black_cross_pendant] = Spree::Product.find_by_name!('Diamond and Black Cross Pendant')
products[:diamond_pave_earrings] = Spree::Product.find_by_name!('Diamond Pave Earrings')
products[:large_scroll_circle_earring] = Spree::Product.find_by_name!('Large Scroll Circle Earring')
products[:oval_link_bracelet] = Spree::Product.find_by_name!('Oval Link Bracelet')
products[:diamond_station_bangle_bracelet] = Spree::Product.find_by_name!('Diamond Station Bangle Bracelet')
products[:cincinnati_reds_cufflinks] = Spree::Product.find_by_name!('Cincinnati Reds Game Used Baseball Cufflinks')
products[:diamond_sapphire_ring] = Spree::Product.find_by_name!('Diamond and Sapphire Ring')
products[:angled_black_diamond_ring] = Spree::Product.find_by_name!('Angled Black Diamond Ring')
products[:tw_steel_ceo_diver] = Spree::Product.find_by_name!('TW STEEL CEO Diver CE5000')
products[:raymond_weil_watch] = Spree::Product.find_by_name!('RAYMOND WEIL Watch, Men\'s Swiss Tradition Black Leather Strap - OSU')
products[:ohio_state_game_cufflinks] = Spree::Product.find_by_name!('Ohio State Game Used Football Cufflinks')


images = {
  products[:ritani_diamond_semi_mount].master => [
    {
      :attachment => Gemador::Seeds.image('ritani_diamond_semi_mount')
    }
  ],
  products[:ritani_polished_solitare].master => [
    {
      :attachment => Gemador::Seeds.image('ritani_polished_solitare')
    }
  ],
  products[:pink_evil_eye].master => [
    {
      :attachment => Gemador::Seeds.image('pink_evil_eye')
    }
  ],
  products[:diamond_black_cross_pendant].master => [
    {
      :attachment => Gemador::Seeds.image('diamond_black_cross_pendant')
    }
  ],
  products[:diamond_pave_earrings].master => [
    {
      :attachment => Gemador::Seeds.image('diamond_pave_earrings')
    }
  ],
  products[:large_scroll_circle_earring].master => [
    {
      :attachment => Gemador::Seeds.image('large_scroll_circle_earring')
    }
  ],
  products[:oval_link_bracelet].master => [
    {
      :attachment => Gemador::Seeds.image('oval_link_bracelet')
    }
  ],
  products[:diamond_station_bangle_bracelet].master => [
    {
      :attachment => Gemador::Seeds.image('diamond_station_bangle_bracelet')
    }
  ],
  products[:cincinnati_reds_cufflinks].master => [
    {
      :attachment => Gemador::Seeds.image('cincinnati_reds_cufflinks')
    }
  ],
  products[:diamond_sapphire_ring].master => [
    {
      :attachment => Gemador::Seeds.image('diamond_sapphire_ring')
    }
  ],
  products[:angled_black_diamond_ring].master => [
    {
      :attachment => Gemador::Seeds.image('angled_black_diamond_ring')
    }
  ],
  products[:tw_steel_ceo_diver].master => [
    {
      :attachment => Gemador::Seeds.image('tw_steel_ceo_diver')
    }
  ],
  products[:raymond_weil_watch].master => [
    {
      :attachment => Gemador::Seeds.image('raymond_weil_watch')
    }
  ],
  products[:ohio_state_game_cufflinks].master => [
    {
      :attachment => Gemador::Seeds.image('ohio_state_game_cufflinks')
    }
  ]
}

images.each do |variant, attachments|
  attachments.each do |attachment|
    variant.images.create!(attachment)
  end
end

