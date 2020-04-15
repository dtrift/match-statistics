FactoryBot.define do
  factory :player do
    team
    first_name { "First_name" }
    last_name { "Last_name" }
    number { 1 }
  end
end
