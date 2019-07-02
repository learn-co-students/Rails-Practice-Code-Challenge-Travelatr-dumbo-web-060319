class Blogger < ApplicationRecord
    has_many :posts
    has_many :destinations, through: :posts

    validates :name, presence: true, uniqueness: true
    validates :age, presence: true, numericality: { :greater_than => 0 }
    validates :bio, presence: true, numericality: { :greater_than => 30 }

    def total_likes 
        total_likes = 0 
        self.posts.each do |post|
            total_likes += post.likes
        end
        total_likes
    end

    def featured_post 
        feat_post = self.posts[0]
        self.posts.each do |post| 
            if post.likes > feat_post.likes
                feat_post = post 
            end
        end
        feat_post
    end

end
