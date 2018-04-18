require('minitest/autorun')
require('minitest/rg')
require_relative('../drink')

class DrinkTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Wine", 5, 20)
    @drink2 = Drink.new("Bear", 4, 15)
    @drink3 = Drink.new("Soda", 2,  0)
   end

  def test_drink_name
    answer = "Wine"
    result =  @drink1.name
    assert_equal(answer,result)
  end

  def test_drink_price
    answer = 5
    result =  @drink1.price
    assert_equal(answer,result)
  end

  def test_drink_alocohol_level
    answer = 15
    result =  @drink2.alcohol
    assert_equal(answer,result)
  end


end
