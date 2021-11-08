class Player

  # The names of each player need to be read
  attr_reader :name
  # The number of lives need to be read and wrote to
  attr_accessor :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end

  # lose function, subtracts 1 life each time a player loses
  def lose()
    self.lives -= 1
  end

end