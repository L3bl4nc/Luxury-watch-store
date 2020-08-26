class CreateWatches < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|
      t.string :brand
      t.integer :model_year
      t.integer :price
      t.string :condition
      t.string :reference_number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
