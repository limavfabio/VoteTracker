class Vote < ApplicationRecord
  belongs_to :candidate, counter_cache: true
  belongs_to :user
  has_one :office, through: :candidate
end
