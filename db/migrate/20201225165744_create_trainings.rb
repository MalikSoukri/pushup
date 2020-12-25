class CreateTrainings < ActiveRecord::Migration[6.0]
  def change
    create_table :trainings do |t|
      t.string :name
      t.float :duration
      t.string :category

      t.timestamps
    end
  end
end
