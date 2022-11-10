class ChangeTimeColumnsIntegerInRecipes < ActiveRecord::Migration[7.0]
  def change
    change_column :recipes, :cooking_time, 'SMALLINT USING EXTRACT(EPOCH FROM cooking_time)/60::SMALLINT'
    change_column :recipes, :preparation_time, 'SMALLINT USING EXTRACT(EPOCH FROM preparation_time)/60::SMALLINT'
  end
end
