class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_many :budget_categories, class_name: 'BudgetCategory', foreign_key: 'category_id', dependent: :destroy
  has_many :budgets, through: :budget_categories 
  has_one_attached :icon

  validates :name, presence: true, length: { maximum: 255 }
end

