class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.where(author_id: current_user.id)
  end

  def show
    @categories = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.author_id = current_user.id

    if @category.save
      flash[:success] = 'Category successfully created'
      redirect_to categories_path
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  private

  def category_params
    params.require(:category).permit(:icon, :name)
  end
end
