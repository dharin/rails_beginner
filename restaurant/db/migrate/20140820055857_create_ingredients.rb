class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.float :rate
      t.integer :user_id
      t.integer :unit_id

      t.timestamps
    end
  end
end
