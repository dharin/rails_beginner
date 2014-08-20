class RenameColumnTypeToIsAdminInUsers < ActiveRecord::Migration
  def change
  	rename_column :users, :type, :isadmin
  end
end
