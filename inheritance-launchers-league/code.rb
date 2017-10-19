class SuperHero
  attr_reader :public_identity

  def initialize(public_identity, secret_identity)
    @public_identity = public_identity
    @secret_identity = secret_identity
  end

  def species
    "Human"
  end

  def home
    "Earth"
  end

  def fans_per_thousand
    500
  end

  def powers
    ""
  end

  def weakness
    ""
  end

  def backstory
    ""
  end

  def speed_in_mph
    60
  end

  def health
    100
  end

  def psychic?
    false
  end

  private
  attr_reader :secret_identity
end

class Speedster < SuperHero
  def backstory
    "Shocked doctors when a chemical spill did not give him lukemia but instead endowed him with superhuman speed."
  end

  def powers
    "Aforementioned super speed."
  end

  def weakness
    "Slippery surfaces, any Cure album played at half tempo."
  end

  def speed_in_mph
    super * 1000
  end
end

class Brawler < SuperHero
  def health
    super * 20
  end

  def backstory
    "Raised by an abusive father, he now takes out his rage on poor people trying to make a living."
  end

  def powers
    "Lack of empathy, ed hardy wardrobe, imaginary lat sydrome."
  end

  def weakness
    "Talking about his feelings. Dancing"
  end
end

class Detective < SuperHero

  def backstory
    "He's super good at finding stuff. Like bigly good at it."
  end

  def powers
    "Obversvation"
  end

  def weakness
    secret_identity
  end

  def speed_in_mph
    super / 6
  end


end

class Demigod < SuperHero

  def backstory
    "Homie has his third eye open."
  end

  def powers
    "Predicting the future slightly more accurately than Nate Silver. Looking good in capes."
  end

  def weakness
    "Water and David Blaine."
  end

  def home
    "Cosmic Plane"
  end
end

class JackOfAllTrades < SuperHero

  def backstory
    "That guy/girl  you hated in school that did everything perfectly and effortlessly."
  end

  def powers
    "The good ones. All of 'em."
  end

  def weakness
    "Something very very specific that never comes up unless you need to write him out of the story."
  end

  def species
    "Alien"
  end

  def home
    "Venus"
  end

  def psychic?
    true
  end

end

class WaterBased < SuperHero

  def backstory
    "Used to go by Picheal Mhelps, was forced to give up his gold metals after they discovered he had working gills."
  end

  def powers
    "Swimming, loneliness, never getting red eye even though he keeps his eyes open in the pool."
  end

  def weakness
    "Looking cool. Uncut sixpack soda rings."
  end

  def fans_per_thousand
    super / 100
  end

  def home
    "Earth's Oceans"
  end

  def psychic?
    true
  end
end
