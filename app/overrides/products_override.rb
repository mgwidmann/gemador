Deface::Override.new(virtual_path: 'spree/products/show',
                     insert_after: '[data-hook="product_show"]',
                     text: '<div class="product-show-filter"><%= render partial: "spree/shared/filters" %></div>',
                     name: :product_show_filters)