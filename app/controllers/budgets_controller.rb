class BudgetsController < ApplicationController
  before_action :authenticate_user!


  def show
    @budget = Budget.find(params[:id])
  end

  def new
    @category = Category.find(params[:cat])
    @budget = Budget.new
  end
end
