require 'test_helper'

class TraderTest < ActiveSupport::TestCase
  it 'does something!' do
    puts "#! ALLOW-DUMMIES"
    puts
    Trader.find_each do |trader|
      trader.offers.find_each do |offer|
        ids = (offer.acceptable_complete_items.includes(:catalog_item) | offer.acceptable_incomplete_items.includes(:catalog_item)).map(&:key)
        puts "(#{trader.name}) %#{trader.id}-#{offer.id} : #{ids.join(' ')}"
      end
      puts
      trader.tradeable_items.includes(:offers).find_each do |item|
        puts "(#{trader.name}) #{item.key} : #{item.offers.map{|o| "%#{trader.id}-#{o.id}"}.join(' ')}"
      end
      puts
    end
  end
end
