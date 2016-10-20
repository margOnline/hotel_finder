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
    data["country"].each do |key, value|
      value.each do |k, v|
        v.each do |city, hotels| 
          hotels.each do |hotel, attributes|
            dest = Destination.new
            dest.name = hotel
            dest.city = city
            dest.country = key
            assign_attributes(dest, attributes)
            destinations << dest
          end
        end
      end
    end
    sort(destinations)
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

  def assign_attributes(hotel, attributes)
    hotel.rating = attributes["star_rating"]
    hotel.previous_price = attributes["former_price"]
    hotel.current_price = attributes["current_price"]
    hotel
  end

end