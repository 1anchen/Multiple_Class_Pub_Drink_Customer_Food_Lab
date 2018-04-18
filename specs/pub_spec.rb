require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')
require_relative('../food')

class PubTest < MiniTest::Test

  def setup

    @drink1 = Drink.new("Wine", 5, 20)
    @drink2 = Drink.new("Bear", 4, 15)
    @drink3 = Drink.new("Soda", 2,  0)
    @drinks =[@drink1, @drink2, @drink3]

    @food1 = Food.new("Chips",2,10)
    @food2 = Food.new("Burger",3,15)
    @food = [@food1,@food2]

    @customer1 = Customer.new("John",23,200)
    @customer2 = Customer.new("Mike",17,500)

    @pub = Pub.new("Edinburgh Arms",0,@drinks,@food)
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

  def test_till_increase
    @pub.sold_drink(@drink1.price)
    answer = 3
    result =  @pub.drinks.length
    assert_equal(answer,result)
  end

  def test_drink_stock
    @pub.drink_stock(@drink1)
    answer = 2
    result =  @pub.drinks.length
    assert_equal(answer,result)
  end

  def test_customer_age_over_18__true
    answer = true
    result =  @customer1.age_over_18(@customer1.age)
    assert_equal(answer,result)
  end

  def test_customer_age_over_18__false
    answer = false
    result =  @customer2.age_over_18(@customer2.age)
    assert_equal(answer,result)
  end

  def test_total_stock
    answer = 0
    result =  @pub.stock[@total_stock]
    assert_equal(answer,result)
  end


  def test_total_stock_with_food_and_drink

    @pub.check_total_stock(@drinks,@food)
    answer = 5
    result =  @pub.stock[@total_stock]
    assert_equal(answer,result)
  end

end
