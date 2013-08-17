class PokemonStat < ActiveRecord::Base
  attr_accessible :attack, :defense, :hp, :name, :special_attack, :special_defense, :speed
end
