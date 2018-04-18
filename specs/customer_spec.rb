require('minitest/autorun')
require('minitest/rg')
require_relative('../pub')
require_relative('../drink')
require_relative('../customer')

class CustomerTest < MiniTest::Test

  def setup

    @drink1 = Drink.new("Wine", 5, 20)
    @drink2 = Drink.new("Bear", 4, 15)
    @drink3 = Drink.new("Soda", 2,  0)
    @drinks =[@drink1, @drink2, @drink3]

    @customer1 = Customer.new("John",23,200)
    @customer2 = Customer.new("Mike",17,500)

    @pub = Pub.new("Edinburgh Arms",0,@drinks)
   end

  def test_customer_name
    answer = "John"
    result =  @customer1.name
    assert_equal(answer,result)
  end

  def test_customer_wallet_total
    answer = 500
    result =  @customer2.wallet
    assert_equal(answer,result)
  end

  def test_customer_buy_drink__true
    @customer1.age_over_18(@customer1.age)
    answer = true
    result =  @customer1.age_over_18(@customer1.age)
    assert_equal(answer,result)
    @customer1.buy_drink(@drink1.price)
    answer = 195
    result =  @customer1.wallet
    assert_equal(answer,result)
    @customer1.consume_drink(@drink1)
    answer = 1
    result =  @customer1.stomach.length
    assert_equal(answer,result)
  end

  def test_customer_buy_drink__false
    @customer2.age_over_18(@customer2.age)
    answer = false
    result =  @customer2.age_over_18(@customer2.age)
    assert_equal(answer,result)
    @customer2.buy_drink(@drink1.price)
    answer = 500
    result =  @customer2.wallet
    assert_equal(answer,result)
    @customer2.consume_drink(@drink1)
    answer = 0
    result =  @customer2.stomach.length
    assert_equal(answer,result)
  end

  def test_customer_age
    answer = 17
    result =  @customer2.age
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

  def test_customer_drunkness
    answer = 0
    result =  @customer1.drunkness
    assert_equal(answer,result)
  end

  def test_maxdrunk
    @customer1.getting_drunk(@drink1.alcohol)
    @customer1.getting_drunk(@drink2.alcohol)
    answer = 35
    result =  @customer1.drunkness
    assert_equal(answer,result)
  end

  def test_refuse_to_serve__true
    @customer1.getting_drunk(@drink1.alcohol)
    @customer1.getting_drunk(@drink2.alcohol)
    @customer1.getting_drunk(@drink1.alcohol)
    answer = true
    result =  @customer1.refuse_to_serve
    assert_equal(answer,result)
  end
end
