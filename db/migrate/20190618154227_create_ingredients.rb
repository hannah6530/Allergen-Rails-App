class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :recipe_id
      # t.integer :allergy_count
    end
  end
end
