class TradeableItem < ActiveRecord::Base
  belongs_to :catalog_item
  belongs_to :trader
  has_many :offers
end
