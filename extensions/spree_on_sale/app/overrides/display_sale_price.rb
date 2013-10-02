Deface::Override.new(virtual_path: 'spree/products/_cart_form',
                      name: 'display_sale_price',
                      insert_after: '#product-price',
                      text: <<-PARTIAL
                      <% if spree_current_user.present? %>
                        <small>
                          ORIGINAL PRICE<br/>
                          <span class="price selling small">
                            <%= @product.price_in(current_currency, :original).display_price %>
                          </span>
                        </small>
                      <% else %>
                        <small>
                        MEMBER PRICE - <%= link_to 'Sign up today!', spree_signup_path %><br/>
                        <span class="price selling small">
                          <%= @product.price_in(current_currency, :sale).display_price %>
                        </span>
                      <% end %>
                      PARTIAL
                      )