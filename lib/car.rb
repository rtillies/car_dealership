class Car
  attr_reader :make
  
  def initialize(make_model, payment, length)
    string = make_model.split(" ")
    @make = string[0]
  end
end
