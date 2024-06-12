class CreateForumThreads < ActiveRecord::Migration[7.1]
  def change
    create_table :forum_threads do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :sticky_order

      t.timestamps
    end
  end
end
