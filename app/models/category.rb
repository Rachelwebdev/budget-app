class Category < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'author_id'
  has_and_belongs_to_many :budgets
  has_one_attached :icon

  validates :name, presence: true, length: { maximum: 255 }
end
