# frozen_string_literal: true

# This migration creates the categories table
class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :icon

      t.timestamps
    end
  end
end
