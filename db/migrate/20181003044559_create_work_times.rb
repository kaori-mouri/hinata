class CreateWorkTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :work_times do |t|
      t.time :start_time
      t.time :end_time
      t.integer :duration

      t.timestamps
    end
  end
end
