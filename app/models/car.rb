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

  def classifications
    self.all.map {|car| car.classification}.uniq
  end

  def find_mechanic_by_specialty(spec)
    Mechanic.all.select {|mechanic| mechanic.specialty == spec}
  end

end
