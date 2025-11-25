class CreatePlans < ActiveRecord::Migration[8.0]
  def change
    create_table :plans do |t|
      t.string :leaving_from
      t.string :going_to
      t.time :time
      t.date :date

      t.timestamps
    end
  end
end
