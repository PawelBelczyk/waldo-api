class AddBoxDimensionsToCharacters < ActiveRecord::Migration[8.1]
  def change
    add_column :characters, :box_width, :float
    add_column :characters, :box_height, :float
  end
end
