class PlayTypeError < StandardError

end


class RPSGame
  attr_accessor :play_type
  VALID_PLAYS = [:rock, :paper, :scissors] #rules are constant for every rock, paper, scissors game you ever play; doesn't change for each instance of class


  def initialize(play_type)
    @play_type = play_type
    raise PlayTypeError unless VALID_PLAYS.include?(play_type)

    #or:
    #raise PlayTypeError if !RPSGame.valid_play?(move) or !self.class.valid_play?(move)
  end

  def self.valid_play?(play_type) #rules are constant for every rock, paper, scissors game you ever play; doesn't change for each instance of class
      VALID_PLAYS.include?(play_type) ? true : false
  end

  def computer_play
    #@computer_play =
    VALID_PLAYS.sample

  end

  def won?
    if computer_play == :scissors && @play_type == :rock || computer_play == :rock && @play_type == :paper || computer_play == :paper && @play_type == :scissors
      true
    elsif tied?
      false
    else
      false
    end
  end

  def tied?
    computer_play == @play_type
  end

  def lost?
    !self.won? && !self.tied?
    # if computer_play == :scissors && @play_type == :paper || computer_play == :paper && @play_type == :rock || computer_play == :rock && @play_type == :scissors
    #   true
    # elsif tied?
    #   false
    # else
    #   false
    # end
  end
  #
  # get '/rps' do
  #   @play =
  #   erb :rps_game
  # end

#controller reaches into model and the view renders the controller.
end
