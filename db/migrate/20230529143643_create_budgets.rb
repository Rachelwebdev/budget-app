# frozen_string_literal: true

class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :budgets do |t|
      t.string :name
      t.decimal :amount
      t.references :author, index: true, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
