class Trader < ActiveRecord::Base
  has_many :tradeable_items
  has_many :catalog_items, through: :tradeable_items
  has_many :offers
  has_many :desired_items, through: :offers, source: :catalog_item
end
