class RemoveTradeableItemIdFromOffers < ActiveRecord::Migration
  def change
    remove_column :offers, :tradeable_item_id, :integer
  end
end
