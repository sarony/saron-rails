class Post < ActiveRecord::Base
  has_many :posts_post_types
  has_many :post_types, :through => :posts_post_types
end
