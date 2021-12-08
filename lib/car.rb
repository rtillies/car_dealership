class Car
  attr_reader :make,
              :model,
              :monthly_payment,
              :loan_length,
              :color

  def initialize(make_model, payment, length)
    string = make_model.split(" ")
    @make = string[0]
    @model = string[1]
    @monthly_payment = payment
    @loan_length = length
    @color = nil
  end

  def total_cost
    @monthly_payment * @loan_length
  end

  def paint!(color)
    @color = color
  end
end
