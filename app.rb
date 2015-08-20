require('sinatra')
require('sinatra/reloader')
require('./lib/rock_paper_scissors')
also_reload('lib/**/*.rb')

$player1

get('/') do
  erb(:player1)
end

get('/player2') do
  $player1 = params.fetch('player1')
  erb(:player2)
end

get('/result') do
  @player2 = params.fetch('player2')
  win_condition = $player1.rock_paper_scissors(@player2)
  @message = "Player One Wins!" if win_condition == true
  @message = "Player Two Wins!" if win_condition == false
  @message = "Tie Game!" if win_condition == 1
  erb(:result)
end