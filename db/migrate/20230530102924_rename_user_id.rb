class RenameUserId < ActiveRecord::Migration[7.0]
  def change
    rename_column :categories, :users_id, :author_id
  end
end
