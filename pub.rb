class Pub

  attr_accessor :name, :till, :drinks

  def initialize(name,till,drinks)
    @name = name
    @till = till
    @drinks = drinks
    @maxdrunk = 50
  end

  def sold_drink(drink_price)
    @till += drink_price
  end

  def drink_stock(drink_name)
    @drinks.delete(drink_name)
  end

  def too_young_to_buy(true_false)
    return true if true_false == true
  end

end
