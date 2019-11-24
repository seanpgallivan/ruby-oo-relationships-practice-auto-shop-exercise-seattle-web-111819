class Mechanic
  @@all = []

  attr_reader :name, :specialty

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_serviced
    Car.all.select {|car| car.mechanic == self}
  end

  def customers
    self.cars_serviced.map {|car| car.owner}.uniq
  end

  def customer_names
    self.customers.map {|owner| owner.name}
  end

end
