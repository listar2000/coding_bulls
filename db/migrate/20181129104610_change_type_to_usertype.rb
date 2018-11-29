class ChangeTypeToUsertype < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :type, :usertype
  end
end
