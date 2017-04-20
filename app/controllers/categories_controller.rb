class CategoriesController < ApplicationController
  before_action :find_category, only: [:edit, :update, :show, :delete]
  before_action :authenticate_user!, except: [:index, :show]

  # Index action to render all categories
  def index
    @categories = Category.all.order(:name)
  end

  # New action for creating category
  def new
    @category = Category.new
  end

  # Create action saves the category into database
  def create
    @category = Category.new(category_params)
    # authorize @category
    if @category.save!
      flash[:notice] = "Successfully created category!"
      redirect_to category_path(@category)
    else
      flash[:alert] = "Error creating new category!"
      render :new
    end
  end

  # Edit action retrives the category and renders the edit page
  def edit
  end

  # Update action updates the category with the new information
  def update
    @category = Category.find(params[:id])
    # authorize @category
    if @category.update(category_params)
      flash[:notice] = "Successfully updated category!"
      redirect_to category_path(@category)
    else
      flash[:alert] = "Error updating category!"
      render :edit
    end
  end

  # The show action renders the individual category after retrieving the the id
  def show
  end

  # The destroy action removes the category permanently from the database
  def destroy
    if @category.destroy
      flash[:notice] = "Successfully deleted category!"
      redirect_to categories_path
    else
      flash[:alert] = "Error updating category!"
    end
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end

  def find_category
    @category = Category.find(params[:id])
  end
end
