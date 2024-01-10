class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
    @comment = Comment.new
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to user_path(current_user)
    else 
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def like
    @post = Post.find(params[:id])
    @like = Like.new(likable_type: "Post", likable_id: @post.id, liker_id: current_user.id)
    if @like.save
      redirect_back fallback_location: root_path
    else
      redirect_back fallback_location: root_path, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:author_id, :body)
  end
end
