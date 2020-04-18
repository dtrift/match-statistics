teams = Team.create!([
  { title: 'Spartak', city: 'Moscow' },
  { title: 'Zenit',   city: 'SPB' }
])

players = Player.create!([
  { first_name: 'Alexandr',  last_name: 'Sobolev', number: 77, team_id: teams[0].id },
  { first_name: 'Jordan',    last_name: 'Larsson', number: 23, team_id: teams[0].id },
  { first_name: 'Ezequiel',  last_name: 'Ponce',   number: 19, team_id: teams[0].id },
  { first_name: 'Artem',     last_name: 'Dzyuba',  number: 22, team_id: teams[1].id },
  { first_name: 'Serdar',    last_name: 'Azmun',   number: 7,  team_id: teams[1].id },
  { first_name: 'Sebastian', last_name: 'Driussi', number: 11, team_id: teams[1].id }
])

matches = Match.create!([
  { city: 'Moscow', date: Time.now - 6.days },
  { city: 'SPB',    date: Time.now - 4.days },
  { city: 'Moscow', date: Time.now - 2.days }
])

match_statistics = MatchStatistic.create([
  { player_id: players[0].id, match_id: matches[0].id, distance_covered: 11.5, productivity: 83, team_id: teams[0].id, distance_success: false, productivity_success: false },
  { player_id: players[1].id, match_id: matches[0].id, distance_covered: 12.1, productivity: 87, team_id: teams[0].id, distance_success: true,  productivity_success: true },
  { player_id: players[2].id, match_id: matches[0].id, distance_covered: 13.5, productivity: 86, team_id: teams[0].id, distance_success: true,  productivity_success: true },
  { player_id: players[3].id, match_id: matches[0].id, distance_covered: 10.5, productivity: 82, team_id: teams[1].id, distance_success: false, productivity_success: false },
  { player_id: players[4].id, match_id: matches[0].id, distance_covered: 11.5, productivity: 84, team_id: teams[1].id, distance_success: false, productivity_success: true },
  { player_id: players[5].id, match_id: matches[0].id, distance_covered: 15.5, productivity: 90, team_id: teams[1].id, distance_success: true,  productivity_success: true },
  { player_id: players[0].id, match_id: matches[1].id, distance_covered: 15.3, productivity: 89, team_id: teams[0].id, distance_success: true,  productivity_success: true },
  { player_id: players[1].id, match_id: matches[1].id, distance_covered: 14.2, productivity: 87, team_id: teams[0].id, distance_success: true,  productivity_success: true },
  { player_id: players[2].id, match_id: matches[1].id, distance_covered: 11.1, productivity: 80, team_id: teams[0].id, distance_success: false, productivity_success: false },
  { player_id: players[3].id, match_id: matches[1].id, distance_covered: 13.9, productivity: 86, team_id: teams[1].id, distance_success: true,  productivity_success: true },
  { player_id: players[4].id, match_id: matches[1].id, distance_covered: 10.5, productivity: 67, team_id: teams[1].id, distance_success: false, productivity_success: false },
  { player_id: players[5].id, match_id: matches[1].id, distance_covered: 20.1, productivity: 99, team_id: teams[1].id, distance_success: true,  productivity_success: true },
  { player_id: players[0].id, match_id: matches[2].id, distance_covered: 14.1, productivity: 89, team_id: teams[0].id, distance_success: true,  productivity_success: true },
  { player_id: players[1].id, match_id: matches[2].id, distance_covered: 13.5, productivity: 87, team_id: teams[0].id, distance_success: true,  productivity_success: true },
  { player_id: players[2].id, match_id: matches[2].id, distance_covered: 12.2, productivity: 80, team_id: teams[0].id, distance_success: true,  productivity_success: false },
  { player_id: players[3].id, match_id: matches[2].id, distance_covered: 11.4, productivity: 86, team_id: teams[1].id, distance_success: false, productivity_success: true },
  { player_id: players[4].id, match_id: matches[2].id, distance_covered: 11.6, productivity: 67, team_id: teams[1].id, distance_success: false, productivity_success: false },
  { player_id: players[5].id, match_id: matches[2].id, distance_covered: 17.9, productivity: 92, team_id: teams[1].id, distance_success: true,  productivity_success: true }
])

matches_teams = MatchesTeam.create!([
  { match_id: matches[0].id, team_id: teams[0].id },
  { match_id: matches[0].id, team_id: teams[1].id },
  { match_id: matches[1].id, team_id: teams[0].id },
  { match_id: matches[1].id, team_id: teams[1].id },
  { match_id: matches[2].id, team_id: teams[0].id },
  { match_id: matches[2].id, team_id: teams[1].id }
])
