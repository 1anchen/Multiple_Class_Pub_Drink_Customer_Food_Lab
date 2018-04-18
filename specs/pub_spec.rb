require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../Customer')

class PubTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Wine", 5)
    @drink2 = Drink.new("Bear", 4)
    @drink3 = Drink.new("Soda", 2)
    @drinks =[@drink1, @drink2, @drink3]

    @pub = Pub.new("Edinburgh Arms",0,@drinks)
   end

  def test_pub_name
    answer = "Edinburgh Arms"
    result =  @pub.name
    assert_equal(answer,result)
  end

  def test_till_total
    answer = 0
    result =  @pub.till
    assert_equal(answer,result)
  end

  def test_drinks_in_pub
    answer = 3
    result =  @pub.drinks.length
    assert_equal(answer,result)
  end


end
