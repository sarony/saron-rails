class PostType < ActiveRecord::Base
  has_many :posts_post_types
  has_many :posts, :through => :posts_post_types
end
