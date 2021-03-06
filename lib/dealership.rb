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

  def details
    info = {
      "total_value" => total_value,
      "address" => @address
    }
  end

  def average_price_of_car
    str = (total_value / inventory_count).to_s
    str.insert(-4,',')
  end

  def cars_sorted_by_price
    @inventory.sort_by do |car|
      car.total_cost
    end
  end

  def inventory_hash
    car_hash = Hash.new
    @inventory.each do |car|
      if !car_hash.keys.include?(car.make)
        car_hash[car.make] = []
      end
      car_hash[car.make] << car
    end
    car_hash
  end
end
