class Hotel
  attr_accessor :name
  attr_accessor :rating
  attr_accessor :country
  attr_accessor :state
  attr_accessor :city
  attr_accessor :current_price
  attr_accessor :previous_price
  attr_accessor :url

  def valid?
    name && country && city && current_price    
  end
end