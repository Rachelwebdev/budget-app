# frozen_string_literal: true

class ReplicateUsersTable < ActiveRecord::Migration[7.0]
  def change
    create_table :users, force: :cascade do |t|
      t.string :name
      t.string :email, default: '', null: false
      t.string :encrypted_password, default: '', null: false
      t.string :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at
      t.string :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string :unconfirmed_email
      t.datetime :created_at, null: false
      t.datetime :updated_at, null: false
    end

    add_index :users, :email, unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
