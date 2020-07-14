class Apartment
attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(apartment_hash)
    @number = apartment_hash[:number]
    @monthly_rent = apartment_hash[:monthly_rent]
    @bathrooms = apartment_hash[:bathrooms]
    @bedrooms = apartment_hash[:bedrooms]
    @renter = []
  end

  def add_renter(name)
    @renter << name
  end

end
