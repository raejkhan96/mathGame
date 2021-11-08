class Game

  # Need to be able to read and overwrite current player
  attr_accessor :current_player 

  def initialize(p1, p2)
    
    @p1 = p1
    @p2 = p2
    # current player is player 2, as it will alternate to p1 first
    @current_player = p2 
  
  end

  def score
    puts "P1 #{@p1.name}: #{@p1.lives}/3 vs P1 #{@p2.name}: #{@p2.lives}/3"
  end

  def generate_question
    
    # generate numbers
    num1 = rand(1..20)
    num2 = rand(1..20)

    # Alternate Players
    if @current_player == @p2
      self.current_player = @p1
    else
      self.current_player = @p2
    end

    # Ask q
    puts "#{current_player.name}: What does #{num1} plus #{num2} equal?"
    ans = gets.chomp #gets.chomp removes line break
    # ans is a string, to be converted to an integer
    if ans.to_i == (num1 + num2)
      puts "Yes! You are correct."
      score
    else
      puts "No! You are incorrect."
      @current_player.lose
      score
    end

  end

  def winner
    
    puts "----- GAME OVER -----"
    if @p1.lives > @p2.lives 
      puts "P1 #{@p1.name} wins with  a score of #{@p1.lives}/3"
    else
      puts "P2 #{@p2.name} wins with  a score of #{@p2.lives}/3"
    end
    puts "Goodbye!"

  end

  def play_game
  
    while @p1.lives > 0 && @p2.lives > 0
      puts "----- NEW TURN -----"
      generate_question
    end
    winner

  end

end

 


