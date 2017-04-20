class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :delete]
  before_action :authenticate_user!, except: [:index, :show]

  # Index action to render all posts
  def index
    @posts = Post.all.order('created_at DESC')
    @posts = Post.search(params).paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end

  # New action for creating post
  def new
    @post = Post.new
  end

  # Create action saves the post into database
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    # authorize @post
    if @post.save!
      flash[:notice] = "Successfully created post!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error creating new post!"
      render :new
    end
  end

  # Edit action retrives the post and renders the edit page
  def edit
  end

  # Update action updates the post with the new information
  def update
    @post = Post.find(params[:id])
    authorize @post
    if @post.update(post_params)
      flash[:notice] = "Successfully updated post!"
      redirect_to post_path(@post)
    else
      flash[:alert] = "Error updating post!"
      render :edit
    end
  end

  # The show action renders the individual post after retrieving the the id
  def show
    @comments = Comment.where(post_id: params[:id]).order('created_at DESC')
    @lasts = Post.where(["id < ?", params[:id].to_i]).last(3)
  end

  # The destroy action removes the post permanently from the database
  def destroy
    if @post.destroy
      flash[:notice] = "Successfully deleted post!"
      redirect_to posts_path
    else
      flash[:alert] = "Error updating post!"
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body, :image, :category_id)
  end

  def find_post
    @post = Post.find(params[:id])
  end
end
