class ChgStaffsToStaffs < ActiveRecord::Migration[5.2]
  def change
    remove_column :staffs, :staffs_type, :string
    add_column :staffs, :staffs_attr, :string
  end
end
