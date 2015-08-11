class Tamagachi
  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @emotional_distress_level = 0
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:sleep_level) do
    @sleep_level
  end

  define_method(:emotional_distress_level) do
    @emotional_distress_level
  end

  define_method(:set_food_level) do |food_level|
    @food_level = food_level
  end

  define_method(:alive?) do
    @food_level != 0
  end

end
