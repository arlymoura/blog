class CommentsController < ApplicationController
  before_action :find_comment, only: [:edit, :update, :show, :delete]
  before_action :authenticate_user!, except: [:index, :show]

  # Index action to render all comments
  def index
    @comments = Comment.all.order('created_at DESC')
  end

  # New action for creating comment
  def new
    @comment = Comment.new
  end

  # Create action saves the comment into database
  #
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params.merge(user: current_user))

    redirect_to post_path(@post)
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end

  # Edit action retrives the comment and renders the edit page
  def edit
  end

  # Update action updates the comment with the new information
  def update
    @comment = Comment.find(params[:id])
    authorize @comment
    if @comment.update(post_params)
      flash[:notice] = "Successfully updated comment!"
      redirect_to comment_path(@post)
    else
      flash[:alert] = "Error updating comment!"
      render :edit
    end
  end

  # The show action renders the individual comment after retrieving the the id
  def show
  end

  # The destroy action removes the comment permanently from the database
  def destroy
    if @comment.destroy
      flash[:notice] = "Successfully deleted comment!"
      redirect_to comments_path
    else
      flash[:alert] = "Error updating comment!"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :body, :image)
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end
end
