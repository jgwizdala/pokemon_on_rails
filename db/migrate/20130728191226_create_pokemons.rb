class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :level
      t.string :type1
      t.string :type2
      t.string :move1
      t.string :move2
      t.integer :hp
      t.integer :totalhp
      t.references :trainer

      t.timestamps
    end
    add_index :pokemons, :trainer_id
  end
end
