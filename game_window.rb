class GameWindow < Gosu::Window
  
  def initialize
    super(500,500,0)
    @player = Player.new(self)
    @platforms = [Platform.new(self), Wood.new(self), Wood2.new(self)]
  end
  
  def platforms
    @platforms
  end
  
  def get_current_platform(player)
    @platforms.find do |platform| 
      player.y >= (platform.y-platform.height) and 
      player.y <= platform.y and
      player.x >= platform.x and
      (player.x+player.width) <= (platform.x+platform.width)
    end
  end
  
  def update
    if button_down? Gosu::Button::KbSpace
      @player.jump
    end
    
    @player.update
  end
  
  def draw
    @player.draw
    @platforms.each {|platform| platform.draw}
  end
  
  
end
