class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :difficulty_level
      t.string :type
      t.text :ingredients
      t.integer :preparation_time
      t.text :directions

      t.timestamps null: false
    end
  end
end
