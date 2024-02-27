class Candidate < ApplicationRecord
  belongs_to :party
  belongs_to :office
  has_many :votes

  validates :office, presence: true
end
