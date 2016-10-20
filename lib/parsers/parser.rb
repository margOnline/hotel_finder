class Parser
  attr_reader :filename

  def self.parse(filename)
    new(filename).parse  
  end

  def initialize(filename)
    @filename = filename
  end

  def parse
    data = JSON.parse(File.read(filename))
    destinations = []
    data["country"].each do |country, country_hash|
      country_hash.each do |area, area_hash|
        if area == "state"
          area_hash.each do |state, state_hash|
            state_hash.each do |city, city_hash|
              city_hash.each do |city, hotels|
                hotels.each do |hotel, attributes|
                  hotel = Destination.new
                  hotel.name = hotel
                  hotel.city = city
                  hotel.state = state
                  hotel.country = country
                  assign_attributes(hotel, attributes)
                  destinations << hotel
                end
              end
            end
          end
        else
          area_hash.each do |city, hotels| 
            hotels.each do |hotel, attributes|
              hotel = Destination.new
              hotel.name = hotel
              hotel.city = city
              hotel.country = country
              assign_attributes(hotel, attributes)
              destinations << hotel
            end
          end
        end
      end
    end
    sort(destinations)
  end

  private
  def parse_hash
    
  end

  def parse_city
    
  end

  def assign_attributes(hotel, attributes)
    hotel.rating = attributes["star_rating"]
    hotel.previous_price = attributes["former_price"]
    hotel.current_price = attributes["current_price"]
    hotel
  end

  def sort(array)
    hash = {}
    array.each do |x|
      if hash[x.country]
        if hash[x.country][x.city]
          hash[x.country][x.city] << x
        else
          hash[x.country][x.city] = [x]
        end
      else
        hash[x.country] = {}
        hash[x.country][x.city] = [x]
      end
    end
    hash
  end

  

end