class CreateTrainers < ActiveRecord::Migration
  def change
    create_table :trainers do |t|
      t.integer :active_pokemon_id
      t.integer :money
      t.string :name

      t.timestamps
    end
  end
end
