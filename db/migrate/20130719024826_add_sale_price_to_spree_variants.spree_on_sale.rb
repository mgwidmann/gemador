# This migration comes from spree_on_sale (originally 20130719024428)
class AddSalePriceToSpreeVariants < ActiveRecord::Migration
  def change
    add_column :spree_variants, :sale_price, :decimal, precision: 8, scale: 2
  end
end
