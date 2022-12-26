class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.order('created_at DESC')
    @rows = [[]]
    @posts.each do |post|
      if @rows[-1].length < 3
        @rows[-1] << post
      else
        @rows << []
        @rows[-1] << post
      end
    end
  end

  def show
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      # flash[:notice] = "Post was successfully created"
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      # flash[:notice] = "Post was updated"
      redirect_to post_path(@post)
    else
      # flash[:notice] = "Post was not updated"
      render :edit
    end
  end

  def destroy
    @post.destroy
    # flash[:notice] = "Post was deleted"
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :image, :remove_image, :image_cache)
  end

  def set_post
    @post = Post.find(params[:id])
  end
end
