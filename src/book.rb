require_relative "narrator"

class Book < Gosu::Window
  def initialize(title = "Storytime", width = 800, height = 600, fullscreen = false)
    super width, height
    self.caption = title
    self.fullscreen = fullscreen
    @narrator = Narrator.new
    @table_of_contents = []
    @current_chapter = 0 # Chapter starts at 0 :)
  end

  # Begin Gosu-specific methods, delegate to Narrator

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

  def next_chapter
    @current_chapter += 1 unless @current_chapter == @table_of_contents.length - 1
  end

  def previous_chapter
    @current_chapter -= 1 unless @current_chapter == 0
  end
end
