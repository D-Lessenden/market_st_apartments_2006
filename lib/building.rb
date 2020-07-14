class Building
attr_reader :units, :renters, :rented_units

  def initialize
    @units = []
    @renters = []
    @rented_units = []
  end

  def add_unit(apartment)
     @units << apartment
  end

  def add_renter(person)
    @renters << person
  end

  # def average_rent
  #   average = []
  #   @renters.each do |rent|
  #   average << @building.units[0].monthly_rent
  # end
  #   average
  #
  # end

  def rented_units
      if units[0].renter != []
      @rented_untis << units
      end
      #@building.units[0].renter
      @rented_untis
    end

end
