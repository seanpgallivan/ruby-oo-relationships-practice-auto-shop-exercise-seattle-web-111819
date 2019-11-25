require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


o1 = CarOwner.new("name1")
o2 = CarOwner.new("name2")
o3 = CarOwner.new("name3")
o4 = CarOwner.new("name4")

m1 = Mechanic.new("mech1", "old")
m2 = Mechanic.new("mech2", "old")
m3 = Mechanic.new("mech3", "new")
m4 = Mechanic.new("mech4", "new")
m5 = Mechanic.new("mech5", "foreign")
m6 = Mechanic.new("mech6", "foreign")

c1 = Car.new("make1", "model1", "old")
c2 = Car.new("make2", "model2", "old")
c3 = Car.new("make3", "model3", "new")
c4 = Car.new("make4", "model4", "new")
c5 = Car.new("make5", "model5", "new")
c6 = Car.new("make6", "model6", "foreign")
c7 = Car.new("make7", "model7", "foreign")
c8 = Car.new("make8", "model8", "foreign")
c9 = Car.new("make9", "model9", "foreign")

c1.owner = o1
c2.owner = o2
c3.owner = o3
c4.owner = o4
c5.owner = o1
c6.owner = o2
c7.owner = o3
c8.owner = o1
c9.owner = o1

c1.mechanic = m1
c2.mechanic = m2
c3.mechanic = m3
c4.mechanic = m4
c5.mechanic = m3
c6.mechanic = m5
c7.mechanic = m6
c8.mechanic = m6
c9.mechanic = m5






binding.pry
