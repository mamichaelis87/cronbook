class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:author_id, :body)
  end
end
