class CreateFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :follows do |t|
      t.references :follower
      t.references :followed

      t.timestamps
    end

    add_foreign_key :follows, :users, column: :follower_id, primary_key: :id
    add_foreign_key :follows, :users, column: :followed_id, primary_key: :id
  end
end
