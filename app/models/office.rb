class Office < ApplicationRecord
  has_many :candidates

  validates :name, presence: true, uniqueness: true
end
