class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update]

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
    @destinations = Destination.all
    @bloggers = Blogger.all
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to post_path(post)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def show
    @blogger = @post.blogger
    @destination = @post.destination
    byebug
    count_likes
    #get current likes and add one if paramsj[:like] == true
  end

  def edit
  end

  def update #update likes here - make form for button
    if @post.update(post_params)
      redirect_to post_path(@post)
    else
      flash[:errors]= @post.errors.full_messages
      redirect_to edit_post_path
    end
  end

  def destroy
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :blogger_id, :destination_id)
  end

  def count_likes
    if params[:like] == true
      @post.likes + 1
    end
  end 

end
