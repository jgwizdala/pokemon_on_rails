class Trainer < ActiveRecord::Base
  attr_accessible :money, :name
  
  has_many :pokemons
end
