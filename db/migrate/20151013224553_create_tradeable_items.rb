class CreateTradeableItems < ActiveRecord::Migration
  def change
    create_table :tradeable_items do |t|
      t.references :catalog_item, index: true, foreign_key: true
      t.references :trader, index: true, foreign_key: true
      t.integer :condition
      t.text :description
      t.boolean :incomplete

      t.timestamps null: false
    end
  end
end
