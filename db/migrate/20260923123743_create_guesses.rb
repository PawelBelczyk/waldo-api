class CreateGuesses < ActiveRecord::Migration[8.1]
  def change
    create_table :guesses do |t|
      t.references :game, null: false, foreign_key: true
      t.references :character, null: false, foreign_key: true
      t.float :x
      t.float :y
      t.boolean :correct

      t.timestamps
    end
  end
end
