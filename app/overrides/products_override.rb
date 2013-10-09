Deface::Override.new(virtual_path: 'spree/products/show',
                     insert_after: '[data-hook="product_show"]',
                     text: '<div class="product-show-filter"><%= render partial: "spree/shared/filters" %></div>',
                     name: :product_show_filters)
Deface::Override.new(virtual_path: 'spree/products/show',
                     insert_after: '[data-hook="cart_form"]',
                     cut: '[data-hook="product_properties"]',
                     name: :product_properties_relocation)
Deface::Override.new(virtual_path: 'spree/products/show',
                     set_attributes: '[data-hook="product_right_part"]',
                     attributes: {class: 'columns thirteen-half omega'},
                     name: :product_description_widen)
Deface::Override.new(virtual_path: 'spree/shared/_products',
                     set_attributes: '[data-hook="products_list_item"]',
                     attributes: {class: 'columns three <%= cycle("alpha", "secondary", "", "", "omega secondary", :name => "classes") %>'},
                     name: :products_per_row)
Deface::Override.new(virtual_path: 'spree/shared/_filters',
                     replace: 'code[erb-loud]:contains("submit_tag")',
                     text: '<%= submit_tag "Filter", :name => nil %>',
                     name: :product_search_to_filter)
Deface::Override.new(virtual_path: 'spree/shared/_filters',
                     replace: 'code[erb-loud]:contains("filter[:name]")',
                     text: 'Filter by (Price Range)',
                     name: :product_search_to_filter)