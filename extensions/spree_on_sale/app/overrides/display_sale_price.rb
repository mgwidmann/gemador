Deface::Override.new(virtual_path: 'spree/products/_cart_form',
                     name: 'iono',
                     replace_contents: '#product-price',
                     text: <<-PARTIAL
                        <% cu = spree_current_user.present? %>
                        <%= content_tag :br unless cu %>
                        <%= content_tag cu ? :h6 : :small, Spree.t(:price), class: "product-section-title " + (cu ? '' : 'xsmall') %>
                        <div>
                          <span class="price selling <%= cu ? '' : 'xsmall'  %>" itemprop="price">
                            <%= display_price(@product.master) %>
                          </span>
                          <span itemprop="priceCurrency" content="<%= @product.currency %>"></span>
                        </div>
PARTIAL
)
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
                        <h6>MEMBER PRICE - <%= link_to 'Membership is FREE, Sign up today!', spree_signup_path %></h6>
                        <span class="price selling">
                          <%= @product.price_in(current_currency, :sale).display_price %>
                        </span>
                      <% end %>
                      PARTIAL
                      )