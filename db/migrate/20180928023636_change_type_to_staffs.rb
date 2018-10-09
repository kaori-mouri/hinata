class ChangeTypeToStaffs < ActiveRecord::Migration[5.2]
  def change
    remove_column :staffs, :type, :string
    add_column :staffs, :staffs_type, :string
  end
end
