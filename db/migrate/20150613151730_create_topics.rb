class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title, null: false
      t.string :url
      t.text :content
      t.integer :user_id, null: false
      t.integer :comments_count, default: 0, null: false
      t.integer :upvotes_count, default: 0, null: false
      t.integer :downvotes_count, default: 0, null: false

      t.timestamps null: false
    end
  end
end
