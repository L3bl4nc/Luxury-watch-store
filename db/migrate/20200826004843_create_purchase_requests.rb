class CreatePurchaseRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :purchase_requests do |t|
      t.references :watch, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :desired_price
      t.boolean :purchase_approved

      t.timestamps
    end
  end
end
