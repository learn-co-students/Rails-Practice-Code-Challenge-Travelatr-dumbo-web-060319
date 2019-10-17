class Destination < ApplicationRecord
    has_many :posts
    has_many :bloggers, through: :posts


    def featured_post
        featured_post = self.posts[0]
        self.posts.each do |post|
            if post.likes > featured_post.likes 
                featured_post = post 
            end
        end
        featured_post
    end

    def time_sorted_posts 
        self.posts.sort_by { |post| post.created_at }
    end

    def average_age_bloggers 
        #avg age of uniq bloggers for this location 
        total_age = 0 
        self.bloggers.uniq.each { |blogger| total_age += blogger.age}
        total_age / self.bloggers.length
    end
    
end
