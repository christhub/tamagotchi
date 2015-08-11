class Tamagotchi
  @@food_level = 5
  @@emotional_distress_level = 5
  @@sleep_level = 5

  define_singleton_method(:clear) do
    @@food_level = 5
    @@emotional_distress_level = 5
    @@sleep_level = 5
  end

  define_method(:initialize) do |name|
    @name = name
  end

  define_singleton_method(:all) do
    @@stats = [@@food_level, @@emotional_distress_level, @@sleep_level]
  end

  define_method(:name) do
    @name
  end

  define_method(:food_level) do
    @@food_level
  end

  define_method(:sleep_level) do
    @@sleep_level
  end

  define_method(:emotional_distress_level) do
    @@emotional_distress_level
  end

  define_method(:set_food_level) do |food_level|
    @@food_level = food_level
  end

  define_method(:alive?) do
    if @@emotional_distress_level == 10
      "Your tamagotchi had a mental breakdown. Try again."
    elsif @@food_level == 0
      "Your tamagotchi died of starvation. Try again."
    elsif @@sleep_level == 0
      "You're clearly neglecting your tamagotchi. It is taken away from you. Try again."
    else
      "alive"
    end
  end

  define_method(:feed) do |food|
    if food == "rice"
      @@food_level += 1
    elsif food == "jambalaya"
      @@food_level += 3
    elsif food == "burger and fries"
      @@food_level += 5
    elsif food == "giant burrito"
      @@food_level += 7
    elsif food == "26 oz boneless ribeye"
      @@food_level += 10
    else
      "You can't feed a tamagotchi that what are you thinking???"
    end
    @@food_level = 10 if @@food_level > 10
  end

  define_method(:sleep) do
    sleep_number = rand(5)
    if sleep_number == 1
      "Your tamagotchi had a good night's sleep!"
      @@sleep_level += 10
    elsif sleep_number == 2 #insomnia
      "Your tamagotchi has insomnia."
      @@sleep_level += 2
    elsif sleep_number == 3 #crappy sleep
      "Your tamagotchi tossed and turned and went to go get fast food in the middle of the night."
      @@sleep_level += 6
    elsif sleep_number == 4 #loud
      "The neighbors were partying all night."
      @@sleep_level += 4
    elsif sleep_number == 0 #no
      "Your tamagotchi slept like a baby."
      @@sleep_level += 8
    else
      "Tamogotchi doesn't wanna!!!"
    end
    @@sleep_level = 10 if @@sleep_level > 10
  end

  def emotions(action)
    if action == "random"
      emotion_number = rand(4)
      if emotion_number = 0
        "Your tamagotchi won the lottery."
        @@emotional_distress_level -= 10
      elsif emotion_number = 1
        "Your tamagotchi got ebola"
        @@emotional_distress_level += 10
      elsif emotion_number = 2
        "Your tamagotchi got a decent job"
        @@emotional_distress_level -= 3
      elsif emotion_number = 3
        "Your tamagotchi went to the dentist"
        @@emotional_distress_level += 3
      else
        "Your tamagotchi had a thoroughly mediocre day."
      end
    elsif action == "present"
      "Your tamagotchi kind of likes your present"
      @@emotional_distress_level -= 1
    elsif action == "discipline"
      @@emotional_distress_level += 2
    end
  end

  define_method(:time_passes) do
    @@food_level -= 1
    @@sleep_level -= 2
    @@emotional_distress_level += 1
  end

end
