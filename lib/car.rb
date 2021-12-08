class Car
  attr_reader :make, :model

  def initialize(make_model, payment, length)
    string = make_model.split(" ")
    @make = string[0]
    @model = string[1]
  end
end
