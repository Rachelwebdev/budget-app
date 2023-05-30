# frozen_string_literal: true
class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = Category.where(author_id: current_user.id)
  end

  def show
    @categories = Category.find(params [:id])
  end

  def new
    @categories = Category.new
  end
  
  
end
