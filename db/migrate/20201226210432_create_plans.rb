class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :name
      t.integer :days
      t.string :specificity
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
