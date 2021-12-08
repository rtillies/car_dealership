class Dealership
  attr_reader :name,
              :address,
              :inventory

  def initialize(name, address)
    @name = name
    @address = address
    @inventory = []
  end

  def inventory_count
    @inventory.count
  end

  def add_car(car)
    @inventory << car
  end

  def has_inventory?
    inventory_count > 0
  end

  def cars_by_make(make)
    cars = []
    @inventory.each do |car|
      if car.make == make
        cars << car
      end
    end
    cars
  end

  def total_value
    total = 0
    @inventory.each do |car|
      total += car.total_cost
    end
    total
  end
end
