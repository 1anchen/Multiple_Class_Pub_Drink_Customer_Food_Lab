class Customer

  attr_accessor :name , :wallet , :stomach

  def initialize(name,wallet)
    @name = name
    @wallet = wallet
    @stomach = []
  end

  def buy_drink(drink_price)
    @wallet -= drink_price
  end

  def consume_drink(drink)
    @stomach.push(drink)
  end

end
