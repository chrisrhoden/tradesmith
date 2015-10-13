class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.references :trader, index: true, foreign_key: true
      t.references :tradeable_item, index: true, foreign_key: true
      t.references :catalog_item, index: true, foreign_key: true
      t.integer :minimum_condition

      t.timestamps null: false
    end
  end
end
