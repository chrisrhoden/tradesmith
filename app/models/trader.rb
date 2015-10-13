class Trader < ActiveRecord::Base
  has_many :tradeable_items
  has_many :catalog_items, through: :tradeable_items
  has_many :offers, through: :tradeable_items
end
