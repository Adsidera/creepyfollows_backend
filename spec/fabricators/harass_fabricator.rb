Fabricator(:harass) do
  description { Faker::Lorem.sentence }
  happened_at { Faker::Date.between(from: 365.days.ago, to: Date.today) }
  start_address 'Ackerstr.18, Berlin'
end