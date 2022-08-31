class ChangeProducts < ActiveRecord::Migration[5.2]
  def up
    change_table :products do |t|
      t.change :description, :text
      t.change :stock, :boolean
      t.change :discount, :decimal
    end
  end

  def down
    change_table :products do |t|
      t.change :description, :string
      t.change :stock, :integer
      t.change :discount, :integer
    end
  end
end
