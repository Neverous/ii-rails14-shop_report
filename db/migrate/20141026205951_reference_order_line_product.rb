class ReferenceOrderLineProduct < ActiveRecord::Migration
  def change
      add_reference :products, :order_line, index: true
  end
end
