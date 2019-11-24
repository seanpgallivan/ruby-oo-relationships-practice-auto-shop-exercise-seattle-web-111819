class CarOwner
  @@all = []

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    self.cars.map {|car| car.mechanic}.uniq
  end

  def self.average_owned
    cars_owned = Car.all.select {|car| car.owner}
    cars_owned.count / cars_owned.map {|car| car.owner}.uniq.count
  end

end
