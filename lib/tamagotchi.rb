class Tamagotchi
  define_method(:initialize) do |name|
    @name = name
    @food_level = 10
    @sleep_level = 10
    @emotional_distress_level = 0
    @bathroom_level = 0
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @food_level
  end

  define_method(:bathroom_level) do
    @bathroom_level
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

  define_method(:feed) do |food|
    if food == "rice"
      @food_level += 1
    elsif food == "jambalaya"
      @food_level += 3
    elsif food == "burger and fries"
      @food_level += 5
    elsif food == "giant burrito"
      @food_level += 7
    elsif food == "26 oz boneless ribeye"
      @food_level += 10
    else
      "You can't feed a tamagotchi that what are you thinking???"
    end
    @food_level = 10 if @food_level > 10
  end

  define_method(:time_passes) do
    @food_level -= 1
  end

end
