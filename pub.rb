class Pub

  attr_accessor :name , :till, :drinks

  def initialize(name,till,drinks)
    @name = name
    @till = till
    @drinks = drinks
  end

  def sold_drink(drink_price)
    @till += drink_price
  end

  def drink_stock(drink_name)
    @drinks.delete(drink_name)
  end


end
