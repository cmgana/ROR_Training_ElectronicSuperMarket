class RenameColumnName < ActiveRecord::Migration[5.2]
  def change
	rename_column :Products, :type, :ptype
	rename_column :Products, :Company_id, :company_id
  end
end
