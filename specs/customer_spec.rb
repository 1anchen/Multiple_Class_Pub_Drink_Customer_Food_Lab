require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../Customer')

class CustomerTest < MiniTest::Test

  def setup
    @drink1 = Drink.new("Wine", 5)
    @drink2 = Drink.new("Bear", 4)
    @drink3 = Drink.new("Soda", 2)
    @drinks =[@drink1, @drink2, @drink3]

    @customer1 = Customer.new("John",20)
    @customer2 = Customer.new("Mike",50)

    @pub = Pub.new("Edinburgh Arms",0,@drinks)
   end

  def test_customer_name
    answer = "John"
    result =  @customer1.name
    assert_equal(answer,result)
  end

  def test_customer_wallet_total
    answer = 50
    result =  @customer2.wallet
    assert_equal(answer,result)
  end

  # def test_drinks_in_pub
  #   answer = 3
  #   result =  @pub.drinks.length
  #   assert_equal(answer,result)
  # end


end
