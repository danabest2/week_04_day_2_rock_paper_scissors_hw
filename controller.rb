require('sinatra')
require('sinatra/reloader') if development?

require_relative('./models/rps.rb')
also_reload('./models/*')


get '/check_win/:hand1/:hand2' do
  hand1 = params[:hand1].to_s
  hand2 = params[:hand2].to_s
  @win = RPSGame.check_win(hand1, hand2)
  erb(:result)
end


get '/welcome' do
  erb(:welcome)
end




# get '/check_win/paper/rock' do
#   hand1 = params[:hand1].to_s
#   hand2 = params[:hand2].to_s
#   @win = RPSGame.check_win(hand1, hand2)
#   erb(:result)
# end
#
# get '/check_win/scissors/paper' do
#   hand1 = params[:hand1].to_s
#   hand2 = params[:hand2].to_s
#   @win = RPSGame.check_win(hand1, hand2)
#   erb(:result)
# end
# #the above 2 were not needed
