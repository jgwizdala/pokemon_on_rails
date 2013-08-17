class CreatePokemonStats < ActiveRecord::Migration
  def change
    create_table :pokemon_stats do |t|
      t.string :name
      t.integer :attack
      t.integer :special_attack
      t.integer :defense
      t.integer :special_defense
      t.integer :speed
      t.integer :hp

      t.timestamps
    end
  end
end
