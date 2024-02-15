class Candidate < ApplicationRecord
  belongs_to :party
  has_many :votes

  validates :office, presence: true
end
