Deface::Override.new(virtual_path: 'spree/products/_cart_form',
                      name: 'display_sale_price',
                      insert_after: '#product-price',
                      text: <<-PARTIAL
                      <% if spree_current_user.present? %>
                        <small>
                          ORIGINAL PRICE<br/>
                          <span class="price selling small">
                            <%= @product.price_in(current_currency, true).display_price %>
                          </span>
                        </small>
                      <% end %>
                      PARTIAL
                      )