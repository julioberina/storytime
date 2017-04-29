require_relative "narrator"

class Book < Gosu::Window
  attr_reader :narrator

  def initialize(title = "Storytime", width = 800, height = 600)
    super width, height
    self.caption = title
    @narrator = Narrator.new
  end

  # Begin Gosu-specific methods

  def update
    @narrator.update
  end

  def draw
  end

  def button_up id
    @narrator.button_up id
  end

  def button_down id
    @narrator.button_down id
  end

  # End Gosu-specific methods

  def open
    self.show
  end
end
