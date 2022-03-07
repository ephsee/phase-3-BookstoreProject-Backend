class CreateCustomerTable < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :address
    end

  end
end
