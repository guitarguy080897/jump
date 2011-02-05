class Platform
  
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/grass.png")
    @x = 0
    @y = 480
  end
  
  def x
    @x
  end
  
  def y
    @y
  end
  
  def draw
   @icon.draw(@x,@y,1)
  end
end