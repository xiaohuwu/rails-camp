class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
  end



  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end


end