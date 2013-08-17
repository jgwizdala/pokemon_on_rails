class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :pp
      t.integer :power
      t.integer :accuracy
      t.integer :critical
      t.string :effect
      t.string :move_type

      t.timestamps
    end
  end
end
