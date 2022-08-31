class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price, precision: 5, scale: 2
      t.integer :stock
      t.integer :discount
      t.boolean :discontinued, default: false
      t.datetime :expiration
      t.string :brand
      t.datetime :creation
      t.boolean :recyclable, default: false
    end
  end
end
