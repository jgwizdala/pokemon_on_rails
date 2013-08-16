class CreateBattles < ActiveRecord::Migration
  def change
    create_table :battles do |t|
      t.integer :trainer_id
      t.integer :enemy_id
      t.integer :turns
      t.string :complete

      t.timestamps
    end
  end
end
