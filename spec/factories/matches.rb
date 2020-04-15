FactoryBot.define do
  factory :match do
    date { Time.now - 1.day }
  end
end
