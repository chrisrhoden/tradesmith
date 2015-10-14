class CreateOffersTradeableItems < ActiveRecord::Migration
  def change
    create_table :offers_tradeable_items do |t|
      t.integer :offer_id
      t.integer :tradeable_item_id
    end
  end
end
