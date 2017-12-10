require 'user_interface'

class GameManager
  attr_accessor :user_interface

  def initialize(user_interface = UserInterface.new)
    @user_interface = user_interface
    @user_interface.render_main_menu
  end

end
