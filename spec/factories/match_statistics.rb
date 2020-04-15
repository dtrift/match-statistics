FactoryBot.define do
  factory :match_statistic do
    player
    match
    distance_covered { 15 }
    productivity { 86 }
  end
end
