class NearestCoffeeShop::CLI
  def call
    puts
    puts
    puts "Need coffee? Find the closest coffee shops around you!"
    puts "To find your general location, we need your zipcode: "
    input_zip = gets.strip
    while !check_valid?(input_zip)
      puts "We need a valid 5-digit zipcode: "
      input_zip = gets.strip
    end
    list_results
    input = nil
    while input != 'exit'
        input = gets.strip.downcase
        case input
        when "1"
          puts <<-DOC.gsub /^\s*/, ''
            --------------------------------------------------------------------------------------------------------------
            Starbucks
            Description: Seattle-based coffeehouse chain known for its signature roasts, light bites and WiFi availability
            Website: starbucks.com
            Phone #: (732)981-9333
            Today's Hours: 5:30AM - 10:30PM
            --------------------------------------------------------------------------------------------------------------
            DOC
          puts "To go back to the list, type 'list', or type exit to quit the program."
        when "2"
        when "3"
        when "list"
          list_results
        end
    end
  end

  def ask_for_zip

  end

  def check_valid?(input)
    if input.length == 5 && input.scan(/\D/).empty?
      true
    else
      false
    end
  end

  def list_results
    puts
    puts "----------------------------Nearby Coffee Shops----------------------------"
    # iterator that displays each object
    results = NearestCoffeeShop::Shop.results
    results.each.with_index(1) do |shop, index|
      puts "#{index}. #{shop.name} - #{shop.address} - #{shop.rating} - #{shop.status}"
    end
    puts "---------------------------------------------------------------------------"
    puts
    puts "To learn more about each location, enter the corresponding number, or type 'exit' to quit."
  end
end
