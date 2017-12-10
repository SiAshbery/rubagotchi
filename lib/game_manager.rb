require 'user_interface'
require 'rubagotchi'

class GameManager
  attr_accessor :user_interface, :rubagotchi

  def initialize(user_interface = UserInterface.new)
    @user_interface = user_interface
  end

  def go_to_main_menu(user_input = gets.chomp)
    @user_interface.render_main_menu
    case user_input
    when '1'
      @rubagotchi = Rubagotchi.new('Snuffles')
    else
      @user_interface.render_invalid_input_error
    end
  end
end
