require 'faker'

party1 = Party.create(name: 'Party A')
party2 = Party.create(name: 'Party B')
party3 = Party.create(name: 'Party C')

office1 = Office.create(name: 'Governor')
office2 = Office.create(name: 'Mayor')
office3 = Office.create(name: 'Councilor')

8.times do
  party = [party1, party2, party3].sample
  office = [office1, office2, office3].sample
  Candidate.create(name: Faker::Name.unique.name, party:, office:)
end

User.create(email: 'john@example.com', name: 'John Doe', phone_number: '555-555-555', password: 'password',
            password_confirmation: 'password', verified: true)

25.times do
  User.create(email: Faker::Internet.unique.email, name: Faker::Name.name, phone_number: Faker::PhoneNumber.cell_phone, password: 'password', password_confirmation: 'password',
              verified: true)
end

# 50.times do
#   candidate = Candidate.all.sample
#   user = User.all.sample
#   vote = Vote.new(candidate:, user:)
#   vote.save! if vote.valid?
# end
