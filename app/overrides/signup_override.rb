Deface::Override.new(virtual_path: 'spree/user_registrations/new',
                     insert_after: '#new-customer',
                     template: 'legal/benefits',
                     name: :member_benefits)
Deface::Override.new(virtual_path: 'spree/user_registrations/new',
                     set_attributes: '#new-customer',
                     attributes: {class: 'columns eight'},
                     name: :member_benefits_form_layout)
Deface::Override.new(virtual_path: 'spree/user_registrations/new',
                     set_attributes: '#benefits',
                     attributes: {class: 'columns eleven-half divider'},
                     name: :member_benefits_text_layout)