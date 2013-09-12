Deface::Override.new(virtual_path: 'spree/checkout/edit',
                     set_attributes: '[data-hook="checkout_form_wrapper"]',
                     attributes: {class: 'columns alpha sixteen'},
                     name: :widen_address_checkout1)
Deface::Override.new(virtual_path: 'spree/checkout/_address',
                     set_attributes: '[data-hook="billing_fieldset_wrapper"]',
                     attributes: {class: 'columns alpha eight'},
                     name: :widen_address_checkout1)
Deface::Override.new(virtual_path: 'spree/checkout/edit',
                     set_attributes: '[data-hook="checkout_title"]',
                     attributes: {class: 'columns five alpha'},
                     name: :widen_checkout_progress_bar)