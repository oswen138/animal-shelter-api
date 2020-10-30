FactoryBot.define do
  factory(:animal) do
    catName {Faker::Creature::Cat.name}
    catType {Faker::Creature::Cat.breed}
    dogName {Faker::Creature::Dog.name}
    dogType {Faker::Creature::Dog.breed}
    dogSize {Faker::Creature::Dog.size}
  end
end

