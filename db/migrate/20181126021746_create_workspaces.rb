class CreateWorkspaces < ActiveRecord::Migration[5.2]
  def change
    create_table :workspaces do |t|
      t.text :caption
      t.text :link

      t.timestamps
    end
  end
end
