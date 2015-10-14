class TradeableItem < ActiveRecord::Base
  belongs_to :catalog_item
  belongs_to :trader
  has_and_belongs_to_many :offers

  def key
    "#{catalog_item.slug}-#{trader.name}"
  end
end
