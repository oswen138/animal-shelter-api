FactoryBot.define do
  factory(:cat) do
    catName {Faker::Creature::Cat.name}
    catType {Faker::Creature::Cat.breed}
  end

  factory(:dog) do
    dogName {Faker::Creature::Dog.name}
    dogType {Faker::Creature::Dog.breed}
    dogSize {Faker::Creature::Dog.size}
  end
end
