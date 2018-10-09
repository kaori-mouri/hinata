class CreateStaffSchedules < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_schedules do |t|
      t.integer :staff_id
      t.date :work_date
      t.string :work_time
      t.integer :status

      t.timestamps
    end
  end
end
