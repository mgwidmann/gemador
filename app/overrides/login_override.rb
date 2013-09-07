Deface::Override.new(virtual_path: 'spree/user_sessions/new',
                     surround: '#existing-customer',
                     text: '<div id="login"><%= render_original %></div>',
                     name: :member_benefits_surround)
Deface::Override.new(virtual_path: 'spree/checkout/registration',
                     insert_after: '#existing-customer',
                     cut: '#guest_checkout',
                     name: :member_benefits_guest)
Deface::Override.new(virtual_path: 'spree/user_sessions/new',
                     insert_after: '#login',
                     template: 'legal/benefits',
                     name: :member_benefits_login)
Deface::Override.new(virtual_path: 'spree/user_sessions/new',
                     set_attributes: '#existing-customer',
                     attributes: {class: 'columns eight'},
                     name: :member_benefits_form_layout_login)
Deface::Override.new(virtual_path: 'spree/checkout/registration',
                     set_attributes: '#guest_checkout',
                     attributes: {class: 'columns five'},
                     name: :member_benefits_guest_checkout)
Deface::Override.new(virtual_path: 'spree/checkout/registration',
                     set_attributes: '#benefits',
                     attributes: {class: 'columns seven-half divider'},
                     name: :member_benefits_guest_checkout_benefits)
Deface::Override.new(virtual_path: 'spree/checkout/registration',
                     set_attributes: '#account',
                     attributes: {class: 'columns alpha full'},
                     name: :member_benefits_guest_layout)
Deface::Override.new(virtual_path: 'spree/user_sessions/new',
                     set_attributes: '#benefits',
                     attributes: {class: 'columns eleven-half divider'},
                     name: :member_benefits_text_layout_login)