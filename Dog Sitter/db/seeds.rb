City.create(name: "Paris")
City.create(name: "Lyon")
City.create(name: "Marseille")

10.times do
  city = City.all.sample
  dogsitter = city.dogsitters.build(name: Faker::Name.first_name)
  dogsitter.save
end

20.times do
  city = City.all.sample
  dog = city.dogs.build(name: Faker::Creature::Dog.name)
  dog.save
end

50.times do
  stroll = Stroll.new(date: Faker::Time.between(from: DateTime.now - 1, to: DateTime.now, format: :default))
  stroll.dogsitter = Dogsitter.all.sample
  stroll.dog = Dog.all.sample
  stroll.save
end