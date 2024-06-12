class AddForumPostsCounterToForumThreads < ActiveRecord::Migration[7.1]
  def up
    add_column :forum_threads, :forum_posts_count, :integer, default: 0 # default 0 is required, becouse if no default then value is nil

    # This is for the forum thread table which already has data
    # so the forum_post_count column must be updated
    ForumThread.all.each do |thread|
      ForumThread.reset_counters(thread.id, :forum_posts) # reset_counters is form active record for counter cache and forum_posts is the relation name on forum thread model
    end
  end

  def down
    remove_column :forum_threads, :forum_posts_count
  end
end
