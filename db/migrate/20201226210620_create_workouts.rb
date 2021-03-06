class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.references :plan, null: false, foreign_key: true
      t.references :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
