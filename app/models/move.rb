class Move < ActiveRecord::Base
  attr_accessible :accuracy, :critical, :effect, :name, :power, :pp, :move_type
end
