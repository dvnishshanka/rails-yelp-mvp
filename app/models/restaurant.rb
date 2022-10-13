class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  validates_inclusion_of :category, in: %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
end
