class ChangePostCategoryTypeToReferences < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :category, :text
    add_reference :posts, :category, foreign_key: true
  end
end
