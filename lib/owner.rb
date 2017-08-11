require "pry"
class Owner
  attr_accessor :name, :pets
  attr_reader :species
  @@all = []

    def initialize(name)
      @name = name
      @species = "human"
      @pets = {:fishes => [], :dogs => [], :cats => []}
      @@all << self
    end

    def buy_fish(name)
      @pets[:fishes] << Fish.new(name)
    end

    def buy_cat(name)
      @pets[:cats] << Cat.new(name)
    end

    def buy_dog(name)
      @pets[:dogs] << Dog.new(name)
    end

    def walk_dogs
      @pets[:dogs].each do |dog|
        dog.mood = "happy"
      end
    end

    def play_with_cats
      @pets[:cats].each do |cat|
        cat.mood = "happy"
      end
    end

    def feed_fish
      @pets[:fishes].each do |fish|
        fish.mood = "happy"
      end
    end

    def sell_pets
      @pets.each do |type, array|
        array.each do |pet|
          pet.mood = "nervous"
        end
        array.clear
      end
    end

    def say_species
      return "I am a #{species}."
    end

    def self.all
      @@all
    end

    def self.reset_all
      @@all.clear
    end

    def self.count
      self.all.length
    end

    def list_pets
      return "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
    end
end
