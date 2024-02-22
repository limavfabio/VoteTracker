class Vote < ApplicationRecord
  belongs_to :candidate, counter_cache: true
  belongs_to :user
  has_one :office, through: :candidate

  validate :unique_office_per_user

  private

  def unique_office_per_user
    if Vote.exists?(user_id:, candidate_id:)
      errors.add(:base, 'You already voted for this candidate')
    else
      existing_votes = Vote.where(user_id:,
                                  candidate_id: Candidate.where(office: candidate.office).pluck(:id))
      errors.add(:base, 'You can only vote once for each office') if existing_votes.any?
    end
  end
end
