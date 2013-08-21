Deface::Override.new(virtual_path: 'spree/user_sessions/new',
                     insert_after: '#existing-customer',
                     template: 'legal/benefits',
                     name: :member_benefits_login)
Deface::Override.new(virtual_path: 'spree/user_sessions/new',
                     set_attributes: '#existing-customer',
                     attributes: {class: 'columns eight'},
                     name: :member_benefits_form_layout_login)
Deface::Override.new(virtual_path: 'spree/user_sessions/new',
                     set_attributes: '#benefits',
                     attributes: {class: 'columns eleven divider'},
                     name: :member_benefits_text_layout_login)