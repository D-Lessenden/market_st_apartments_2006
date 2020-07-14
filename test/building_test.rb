require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require './lib/renter'
require './lib/building'
require 'pry'

class BuildingTest < Minitest::Test

  def setup
    @building = Building.new
  end

  def test_it_exists
    assert_instance_of Building, @building
  end

  def test_it_has_units
    assert_equal [], @building.units
  end

  def test_add_units
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    assert_equal [@unit1, @unit2], @building.units
  end

  def test_it_has_renters
    assert_equal [], @building.renters
  end

  def test_add_renters

    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @renter1 = Renter.new("Aurora")
    @building.add_renter(@renter1)
    @building.add_unit(@unit1)

    assert_equal [@renter1], @building.renters

    @renter2 = Renter.new("Tim")
    @building.add_renter(@renter2)
    @building.add_unit(@unit2)
    assert_equal [@renter1, @renter2], @building.renters
  end


  def test_average_rent
    skip
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    @renter1 = Renter.new("Aurora")
    @building.add_renter(@renter1)
    @building.add_unit(@unit1)
    @renter2 = Renter.new("Tim")
    @building.add_renter(@renter2)
    @building.add_unit(@unit2)
    #binding.pry
    assert_equal 1099.5, @building.average_rent
  end


  def test_rented_units
    assert_equal [], @building.rented_units
  end

  def test_rented_units_add_renter
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 1, bedrooms: 2})
    @unit3 = Apartment.new({number: "C3", monthly_rent: 1150, bathrooms: 2, bedrooms: 2})
    @unit4 = Apartment.new({number: "D4", monthly_rent: 1500, bathrooms: 2, bedrooms: 3})

    @renter1 = Renter.new("Spencer")
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    @building.add_unit(@unit3)
    @unit2.add_renter(@renter1)
#binding.pry
    #@unit3.add_renter(@renter2)
    assert_equal [@unit2], @building.rented_units





  end

end
