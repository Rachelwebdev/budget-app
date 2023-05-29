class BudgetsController < ApplicationController
    before_action :authenticate_user!

  def index
    @budget = current_user.budgets
  end

  def show
    @budget = Budget.find(params[:id])
  end
end
