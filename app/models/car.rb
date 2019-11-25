class Car
  @@all = []

  attr_reader :make, :model, :classification
  attr_accessor :owner, :mechanic

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classifications
    self.all.map {|car| car.classification}.uniq
  end

  def find_mechanic_by_specialty
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

end
