class CatalogItem < ActiveRecord::Base
  has_many :tradeable_items
  has_many :offers
end
