class Offer < ActiveRecord::Base
  belongs_to :tradeable_item
  belongs_to :catalog_item
  has_one :trader, through: :tradeable_item
  has_many :acceptable_completes, -> { where(incomplete: false) }, through: :catalog_item, source: :tradeable_items
  has_many :acceptable_incompletes
  has_many :acceptable_incomplete_items, through: :acceptable_incompletes
end
