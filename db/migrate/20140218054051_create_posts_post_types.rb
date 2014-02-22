class CreatePostsPostTypes < ActiveRecord::Migration
  def change
    create_table :posts_post_types do |t|
      t.references :post
      t.references :post_type

      t.timestamps
    end
  end
end
