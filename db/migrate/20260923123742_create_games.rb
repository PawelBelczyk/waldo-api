class CreateGames < ActiveRecord::Migration[8.1]
  def change
    create_table :games do |t|
      t.datetime :started_at
      t.datetime :finished_at

      t.timestamps
    end
  end
end
