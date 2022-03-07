class CreateOrderTable < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.references :customer
      t.references :book
    end
  end
end
