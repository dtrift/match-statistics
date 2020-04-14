FactoryBot.define do
  factory :match do
    host { 1 }
    guest { 2 }
    date { Time.now - 1.day }
  end
end
