class CreateDashboardAndPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :dashboard_and_posts do |t|
      t.references :workspace, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
