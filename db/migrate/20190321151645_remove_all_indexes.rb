class RemoveAllIndexes < ActiveRecord::Migration[5.2]
  def change
    remove_index "posts_id", name: "index_authors_on_posts_id"
    remove_index "author_id", name: "index_comments_on_author_id"
    remove_index "post_id", name: "index_comments_on_post_id"
    remove_index "author_id", name: "index_posts_on_author_id"
    remove_index "comments_id", name: "index_posts_on_comments_id"
  end
end
