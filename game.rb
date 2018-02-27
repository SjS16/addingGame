require './question'
require './player'
require './answer'

class AddingGame
  def initialize
    @player1 = Player.new('Player 1',3)
    @player2 = Player.new('Player 2',3)
    @players = [@player1, @player2]
    @current_player = @player1
    @game_playing = true
    while @game_playing do
      play_turn
      switch_player
      print_score
      end
    end
  end

  def play_turn
    puts "----- NEW TURN -----"
    puts "Question for #{@current_player.name}:"
    q = Question.new
    a = Answer.new q.answer, q.math 
    if a.answer_true?
      puts "Good job, you know basic math"
    else 
      puts "That's wrong, dumbass"
      @current_player.score = @current_player.score - 1
      if @current_player.score === 0
        @game_playing = false
        winner = @current_player == @player1 ? @player2 : @player1
        puts "-----Game over!------ \n#{winner.name} wins! Final score: "
    end
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end

  def print_score
    for player in @players do
      puts "#{player.name}: #{player.score}/3"
    end
  end

  def self.win_exists?
    if @current_player.score === 0
    end
  end
end

AddingGame.new

