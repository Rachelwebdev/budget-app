# frozen_string_literal: true

class CreateBudgetCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :budget_categories do |t|
      t.references :budget, index: true, null: false, foreign_key: { to_table: :categories }
      t.references :category, index: true, null: false, foreign_key: { to_table: :budgets }

      t.timestamps
    end
  end
end
