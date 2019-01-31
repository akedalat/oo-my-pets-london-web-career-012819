class Owner
  @@all = []
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(name)
    @name = name
    @species = "human"
    @pets = {:fishes => [], :dogs => [], :cats => []}

@@all << self
  end

  def self.all
@@all
  end

  def self.count
@@all.length
  end

  def self.reset_all
    @@all = []
  end

  def say_species
return "I am a #{@species}."
  end
def buy_fish(fish_name)
@pets[:fishes] << Fish.new(fish_name)
end

def buy_cat(cat_name)
@pets[:cats] << Cat.new(cat_name)
end

def buy_dog(dog)
@pets[:dogs] << Dog.new(dog)
end

def walk_dogs
  @pets[:dogs].map do |dog|
    dog.mood = "happy"
  end
end

def play_with_cats
  @pets[:cats].map do |cat|
    cat.mood = "happy"
  end
end

def feed_fish
  @pets[:fishes].map do |fish|
    fish.mood = "happy"
  end
end

def sell_pets
  @pets.map do |pet, pet_array|
      pet_array.map do |animal|
        animal.mood = "nervous"
      end
      @pets[pet] = []
  end
end

def list_pets
  count_fish = @pets[:fishes].length
  count_dog = @pets[:dogs].length
  count_cat = @pets[:cats].length
  return "I have #{count_fish} fish, #{count_dog} dog(s), and #{count_cat} cat(s)."
end


end
