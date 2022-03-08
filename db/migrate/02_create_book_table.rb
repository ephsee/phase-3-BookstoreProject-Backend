class CreateBookTable < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author    
      t.string :genre
      t.string :publisher
      t.integer :quantity
      t.string :image
      t.string :description
    end
  end
end
