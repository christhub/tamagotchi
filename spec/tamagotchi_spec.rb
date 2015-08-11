require('rspec')
require('Tamagotchi')

describe(Tamagotchi) do
  describe("#initialize") do
    it('it sets the name of the Tamagotchi') do
      my_pet = Tamagotchi.new("Carlos")
      expect(my_pet.name).to(eq("Carlos"))
      expect(my_pet.food_level()).to(eq(10))
      expect(my_pet.sleep_level()).to(eq(10))
      expect(my_pet.emotional_distress_level()).to(eq(0))
    end
  end

  describe('#alive?') do
    it('is alive if the food level is above 0') do
      my_pet = Tamagotchi.new('Carlos')
      my_pet.set_food_level(5)
      expect(my_pet.alive?).to(eq(true))
    end

    it("is dead if the food level is 0") do
      my_pet = Tamagotchi.new("Carlos")
      my_pet.set_food_level(0)
      expect(my_pet.alive?).to(eq(false))
    end

  end
  describe("#time_passes") do
    it('quantifies existence') do
      my_pet = Tamagotchi.new("Carlos")
      my_pet.time_passes()
      expect(my_pet.food_level()).to(eq(9))
    end
  end

  describe("#feed") do
    it("increases food levels by 3 if fed jambalaya") do
      my_pet = Tamagotchi.new("Carlos")
      my_pet.set_food_level(2)
      my_pet.feed("jambalaya")
      expect(my_pet.food_level).to(eq(5))
    end

    it("sets food levels to 10 if food increases levels above 10") do
      my_pet = Tamagotchi.new("Carlos")
      my_pet.set_food_level(2)
      my_pet.feed("26 oz boneless ribeye")
      expect(my_pet.food_level).to(eq(10))
    end
  end
end
