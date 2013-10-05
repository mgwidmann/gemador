Deface::Override.new(virtual_path: 'spree/products/show',
                     insert_after: '[data-hook="product_show"]',
                     text: '<div class="product-show-filter"><%= render partial: "spree/shared/filters" %></div>',
                     name: :product_show_filters)
Deface::Override.new(virtual_path: 'spree/shared/_products',
                     set_attributes: '[data-hook="products_list_item"]',
                     attributes: {class: 'columns three <%= cycle("alpha", "secondary", "", "", "omega secondary", :name => "classes") %>'},
                     name: :products_per_row)