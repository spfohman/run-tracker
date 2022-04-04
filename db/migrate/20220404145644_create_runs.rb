class CreateRuns < ActiveRecord::Migration[6.1]
  def change
    create_table :runs do |t|
      t.date :date
      t.float :distance
      t.time :total_time
      t.integer :calories
      t.integer :elevation
      t.integer :average_heartrate
      t.time :average_pace
      t.time :fastest_split
      t.integer :user_id

      t.timestamps
    end
  end
end
