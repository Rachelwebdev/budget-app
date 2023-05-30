class AddRefToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :users, null: false, foreign_key: true
  end
end
