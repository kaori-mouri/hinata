class CreateStaffOcupations < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_ocupations do |t|
      t.string :attr
      t.string :attr_name

      t.timestamps
    end
  end
end
