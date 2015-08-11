require('rspec')
require('tamagachi')

describe(Tamagachi) do
  describe("#initialize") do
    it('it sets the name of the tamagachi') do
      my_pet = Tamagachi.new("Carlos")
      expect(my_pet.name).to(eq("Carlos"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.emotional_distress_level()).to(eq(0))
    end
  end

  describe('#alive?') do
    it('is alive if the food level is above 0') do
      my_pet = Tamagachi.new('Carlos')
      my_pet.set_food_level(0)
      expect(my_pet.alive?).to(eq(false))
    end
  end
end
