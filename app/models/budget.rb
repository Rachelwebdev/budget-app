class Budget < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'  
  has_many :budget_categories, class_name: 'BudgetCategory', foreign_key: 'category_id', dependent: :destroy
  has_many :budgets, through: :budget_categories 

  validates :name, presence: true, length: { maximum: 255 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
