class CreateBudgetCategory < ActiveRecord::Migration[7.0]
  def change
    create_table :budget_categories do |t|
      t.references :budget, index: true, null: true, foreign_key:{to_table: :budgets}
      t.references :category, index: true, null: true, foreign_key:{to_table: :categories}

      t.timestamps
    end
  end
end
