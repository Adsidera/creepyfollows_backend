Fabricator(:harass) do
  description { Faker::Lorem.sentence }
  happened_at { Faker::Date.between(365.days.ago, Date.today) }
  start_address "Ackerstr.18, Berlin"
end