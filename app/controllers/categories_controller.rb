class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:succes] = "Success"
      redirect_to categories_path
    else
      flash[:error] = "Error man"
      render :new
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
