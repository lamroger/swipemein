class CreateSellPosts < ActiveRecord::Migration
  def change
    create_table :sell_posts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :sell_posts, [:user_id, :created_at]
  end
end
