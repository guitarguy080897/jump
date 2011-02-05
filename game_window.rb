class GameWindow < Gosu::Window
  
  def initialize
    super(500,500,0)
    @player = Player.new(self)
    @platform = Platform.new(self)
  end
  
  def platform
    @platform
  end
  
  def update
    if button_down? Gosu::Button::KbSpace
      @player.jump
    end
    
    @player.update
  end
  
  def draw
    @player.draw
    @platform.draw
  end
  
  
end
