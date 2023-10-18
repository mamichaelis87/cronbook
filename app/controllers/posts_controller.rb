class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
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
    Like.create(likable_type: "Post", likable_id: @post.id, liker_id: current_user.id)
    redirect_back(fallback_location: root_path) 
  end

  private

  def post_params
    params.require(:post).permit(:author_id, :body)
  end
end
