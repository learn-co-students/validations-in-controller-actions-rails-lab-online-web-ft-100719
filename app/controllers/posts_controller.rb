class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
    @post = Post.new
  end

  def new 
    @post = Post.new
  end

  def edit
    @post = Post.find_by(params[:id])
  end

  def update
    #binding.pry 
    @post.update(post_params)
    if @post.valid?
      @post.save
      redirect_to post_path(@post)
    else
      render :'/posts/edit'
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
