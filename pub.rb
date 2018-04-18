class Pub

  attr_accessor :name, :till, :drinks, :food, :stock

  def initialize(name,till,drinks,food)
    @name = name
    @till = till
    @drinks = drinks
    @food = food
    @maxdrunk = 50
    @stock = {
             @drinks => drinks,
             @food => food,
             @total_stock => 0
             }
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

  def check_total_stock(drinks,food)
    stock = []

    for item in drinks
    stock.push(item)
    end

    for item in food
    stock.push(item)
    end

    @stock[@total_stock] = stock.length
  end
end
