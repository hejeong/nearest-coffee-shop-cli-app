class NearestCoffeeShop::Shop
  attr_accessor :name, :address, :rating, :status

  def self.results
    scraped = NearestCoffeeShop::ShopScraper.scrape

    first_shop = self.new
    first_shop.name = 'Starbucks'
    first_shop.address = '1364 Centennial Ave'
    first_shop.rating = '4.2 stars'
    first_shop.status = 'OPEN'

    second_shop = self.new
    second_shop.name = 'Tea Time'
    second_shop.address = '201 Circle Dr N'
    second_shop.rating = '4.2 stars'
    second_shop.status = 'OPEN'

    third_shop = self.new
    third_shop.name = 'OQ Coffee: Shop and Roastery'
    third_shop.address = '13 S 3rd Ave Suite C'
    third_shop.rating = '4.6 stars'
    third_shop.status = 'CLOSED'
    [first_shop, second_shop, third_shop]
  end
end
