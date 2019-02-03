class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string     :name,    null: false
      t.integer    :price,   null: false
      t.references :creator, null: false
    end

    add_index :products, :name
    add_index :products, :price
  end
end
