class AddTypeToStaffs < ActiveRecord::Migration[5.2]
  def change
    add_column :staffs, :type, :string
  end
end
