json.extract! candidate, :id, :name, :office, :party_id, :created_at, :updated_at
json.url candidate_url(candidate, format: :json)
