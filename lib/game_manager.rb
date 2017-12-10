require 'user_interface'
require 'rubagotchi'

class GameManager
  attr_accessor :user_interface, :rubagotchi

  def initialize(user_interface = UserInterface.new)
    @user_interface = user_interface
    go_to_main_menu
  end

  def go_to_main_menu()
    @user_interface.render_main_menu
    @rubagotchi = Rubagotchi.new('Snuffles')
  end

end
