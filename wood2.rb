class Wood2
  
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/wood.png")
    @x = 200
    @y = 300
  end
  
  def x
    @x
  end
  
  def y
    @y
  end
  
  def height
    @icon.height
  end
  
  def width
    @icon.width
  end
  
  def draw
   @icon.draw(@x,@y,1)
  end
end