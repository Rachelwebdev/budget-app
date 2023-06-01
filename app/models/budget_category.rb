class BudgetCategory < ApplicationRecord
  belongs_to :budget, class_name: 'Budget', foreign_key: 'budget_id'
  belongs_to :category, class_name: 'Category', foreign_key: 'category_id'
end
