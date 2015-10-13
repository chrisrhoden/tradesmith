class AcceptableIncomplete < ActiveRecord::Base
  belongs_to :offer
  belongs_to :acceptable_incomplete_item, foreign_key: 'tradeable_item_id', class_name: 'TradeableItem'
end
