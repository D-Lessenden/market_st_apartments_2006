require 'minitest/autorun'
require 'minitest/pride'
require './lib/apartment'
require 'pry'

class ApartmentTest < Minitest::Test

  def setup
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
  end

  def test_it_has_a_number
    assert_equal "A1", @unit1.number
  end

  def test_monthly_rent
    assert_equal 1200, @unit1.monthly_rent
  end

  def test_number_of_bathrooms
    assert_equal 1, @unit1.bathrooms
  end

  def test_number_of_bedrooms
    assert_equal 1, @unit1.bedrooms
  end

end
