FactoryBot.define do
  factory :match do
    city { 'SomeCity' }
    date { Time.now - 1.day }
  end
end
