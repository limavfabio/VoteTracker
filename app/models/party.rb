class Party < ApplicationRecord
  has_many :candidates
  has_many :votes, through: :candidates

  validates :name, presence: true, uniqueness: true
end
