require 'pry'
class NearestCoffeeShop::ShopScraper
  def self.scrape
    url = "https://www.google.com/maps/search/coffee+shop+near+89576"
    #url = "https://www.starbucks.com/coffee/espresso/cappuccino-beverages"
    doc = Nokogiri::HTML(open(url))
    binding.pry
  end
end
