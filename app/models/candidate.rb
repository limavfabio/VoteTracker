class Candidate < ApplicationRecord
  belongs_to :office
  belongs_to :party
  has_many :votes, dependent: :destroy

  validates :name, presence: true
  validates :office, presence: true
  validates :party, presence: true
end
