class Offer < ActiveRecord::Base
  belongs_to :catalog_item
  belongs_to :trader
  has_many :acceptable_complete_items, ->(offer) { where(incomplete: false).where(['condition >= ?', offer.minimum_condition]) }, through: :catalog_item, source: :tradeable_items
  has_many :acceptable_incompletes
  has_many :acceptable_incomplete_items, through: :acceptable_incompletes
  has_and_belongs_to_many :tradeable_items
end
