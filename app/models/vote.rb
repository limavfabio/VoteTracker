class Vote < ApplicationRecord
  belongs_to :candidate
  belongs_to :user
  belongs_to :party, through :candidate

  validates_uniqueness_of :user_id, scope: :candidate_id
end
