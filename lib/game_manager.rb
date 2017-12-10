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
      go_to_new_rubagotchi_menu
    else
      @user_interface.render_invalid_input_error
    end
  end

  def go_to_new_rubagotchi_menu(user_input = gets.chomp)
    @user_interface.render_name_input_prompt
    @rubagotchi = Rubagotchi.new(user_input)
  end
end
