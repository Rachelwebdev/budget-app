class BudgetsController < ApplicationController
  before_action :authenticate_user!

  def new
    @category = Category.find(params[:cat])
    @budget = Budget.new
  end

  def create
    @original = Category.find(params[:cat])
    @cate = Category.where(name: params[:budget][:category].downcase, author_id: current_user).first
    @transaction = Budget.new(transaction)
    @transaction.author_id = current_user.id
    if @cate.nil?
      flash[:alert] = 'The category does not exist, create the category'
      # redirect_to category_path(@original.id)
      redirect_to categories_path
    else
      @transaction.save
      redirect_to category_path(@cate.id)
      @complete = BudgetCategory.new(budget_id: @transaction.id, category_id: @cate.id)
      @complete.save
    end
  end


  private

  def transaction
    params.require(:budget).permit(:name, :amount)
  end
end
