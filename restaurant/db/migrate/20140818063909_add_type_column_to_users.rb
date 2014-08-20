class AddTypeColumnToUsers < ActiveRecord::Migration
  def change
  	add_column :users , :type ,:boolean ,:default => false
  end
end
