class GameRound
  attr_reader :guess_count

  def initialize
    @guess_count = 0
  end

  MAX_NUMBER = 10

  def play_round
    generate_number
    3.times do
      get_user_guess
      evaluate_results
      break if correct_guess?
    end
    loser unless correct_guess?
  end

  def correct_guess?
    @guess == @number
  end

  private

  def generate_number
    @number = 4#rand(MAX_NUMBER) + 1
  end

  def get_user_guess
    print "Guess the number I'm thinking of between 1 and #{MAX_NUMBER}: "
    @guess = gets.chomp.to_i
    @guess_count += 1
  end

  def evaluate_results
    if correct_guess?
      winner
    else
      # count = count + 1
      bad_guess
    end
  end

  def bad_guess
    puts "Try again."
  end

  def winner
    puts "You're right. Great job!"
  end

  def loser
    puts "You're not so good at guessing."
  end

end


class GuessingGame

  def initialize
    @wins = 0
    @rounds = 0
    @total_guesses = 0
  end

  def play_game
    welcome_banner
    while wants_to_play?
      play_round
    end
    end_game
  end

  private

  def end_game
    puts "Thanks for playing.  Bye."
    puts "You won #{@wins} rounds."
    puts "You averaged #{average_guesses_per_round} guesses per round."
  end

  def average_guesses_per_round 
    @total_guesses * 1.0 / @rounds
  end

  def play_round
    round = GameRound.new
    round.play_round
    @wins += 1 if round.correct_guess?
    @rounds += 1
    @total_guesses += round.guess_count
  end

  def wants_to_play?
    puts "Shall we play a round? (y/n)"
    answer = gets.chomp
    answer == "y"
  end

  def welcome_banner
    msg = "Welcome to the Guessing Game"
    puts msg
    puts "-" * msg.size
  end

end

game = GuessingGame.new
game.play_game
