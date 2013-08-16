class Pokemon < ActiveRecord::Base
  belongs_to :trainer
  attr_accessible :hp, :level, :move1, :move2, :name, :totalhp, :type1, :type2
end
