teams = Team.create([
  { title: 'Spartak', city: 'Moscow' },
  { title: 'Zenit', city: 'SPB' }
])

players = Player.create([
  { first_name: 'Alexandr', last_name: 'Sobolev', number: 77, team_id: teams[0].id },
  { first_name: 'Jordan', last_name: 'Larsson', number: 23, team_id: teams[0].id },
  { first_name: 'Ezequiel', last_name: 'Ponce', number: 19, team_id: teams[0].id },
  { first_name: 'Artem', last_name: 'Dzyuba', number: 22, team_id: teams[1].id },
  { first_name: 'Serdar', last_name: 'Azmun', number: 7, team_id: teams[1].id },
  { first_name: 'Sebastian', last_name: 'Driussi', number: 11, team_id: teams[1].id }
])

matches = Match.create([
  { host_id: teams[0].id, guest_id: teams[1].id, date: Time.now - 6.days },
  { host_id: teams[1].id, guest_id: teams[0].id, date: Time.now - 4.days },
  { host_id: teams[0].id, guest_id: teams[1].id, date: Time.now - 2.days }
])
