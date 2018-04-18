require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')
require_relative('../food')

class FoodTest < MiniTest::Test

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

   def test_food_name
     answer = "Chips"
     result =  @food1.name
     assert_equal(answer,result)
   end

   def test_food_price
     answer = 2
     result =  @food1.price
     assert_equal(answer,result)
   end

   def test_food_rejuvenation
     answer = 15
     result =  @food2.rejuvenation
     assert_equal(answer,result)
   end

 end
