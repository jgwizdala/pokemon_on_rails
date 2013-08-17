class Pokemon < ActiveRecord::Base
  belongs_to :trainer
  attr_accessible :hp, :level, :move1, :move2, :move1_pp, :move2_pp, :name, :type1, :type2
end
