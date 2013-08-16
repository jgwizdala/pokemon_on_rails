class Battle < ActiveRecord::Base
  attr_accessible :complete, :enemy_id, :trainer_id, :turns
end
