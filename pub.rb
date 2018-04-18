class Pub

  attr_reader :name
  attr_writer :till , :drinks
  
  def initialize(name,till,drinks)
    @name = name
    @till = 0
    @drinks = []
  end



end
