class DestinationsController < ApplicationController

    before_action :find_destination, only: [:show, :edit, :update, :destroy]

    def index 
        @destinations = Destination.all 
    end

    def show 
        @posts = @destination.posts
        @five_most_recent = @destination.time_sorted_posts.last(5)
        @featured_post = @destination.featured_post
        @average_blogger_age = @destination.average_age_bloggers
    end




    private

    def find_destination 
        @destination = Destination.find(params[:id])
    end
end
