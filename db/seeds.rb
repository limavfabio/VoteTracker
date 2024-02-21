require 'faker'

party1 = Party.create(name: 'Party A')
party2 = Party.create(name: 'Party B')
party3 = Party.create(name: 'Party C')

8.times do
  party = [party1, party2, party3].sample
  office = ['Governor', 'Mayor', 'Councilor'].sample
  Candidate.create(name: Faker::Name.unique.name, party: party, office: office)
end

User.create(email: 'john@example.com', password: 'password', password_confirmation: 'password', verified: true)

25.times do
  User.create(email: Faker::Internet.unique.email, password: 'password', password_confirmation: 'password', verified: true)
end

50.times do
  candidate = Candidate.all.sample
  user = User.all.sample
  vote = Vote.new(candidate: candidate, user: user)
  vote.save! if vote.valid?
end
