class ChangeCategoryNameTextToString < ActiveRecord::Migration[5.2]
  def change
    change_column :categories, :name, :string
  end
end
