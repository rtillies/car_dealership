class Car
  attr_reader :make, :model, :monthly_payment

  def initialize(make_model, payment, length)
    string = make_model.split(" ")
    @make = string[0]
    @model = string[1]
    @monthly_payment = payment
  end
end
