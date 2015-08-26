require_relative 'config/environment'

#controller
class GameApp < Sinatra::Base
  get '/rps/:play' do  #:play means you can replace with parameter: http://localhost:9292/rps/rock; whatever variable you replace with , you can call using it params [:play]
    move = params[:play].to_sym
    @game = RPSGame.new(move)

    erb :rps_game
  end
end
