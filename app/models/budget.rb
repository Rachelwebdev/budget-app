class Budget < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories

  validates :name, presence: true, length: { maximum: 255 }
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }
end
