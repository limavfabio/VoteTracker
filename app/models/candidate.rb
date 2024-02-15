class Candidate < ApplicationRecord
  belongs_to :party
  has_many :votes
end
