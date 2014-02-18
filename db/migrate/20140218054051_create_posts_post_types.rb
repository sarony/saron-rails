class CreatePostsPostTypes < ActiveRecord::Migration
  def change
    create_table :posts_post_types do |t|
      t.integer :post_id
      t.integer :post_type_id

      t.timestamps
    end
  end
end
