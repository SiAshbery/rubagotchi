require_relative './user_interface'
require_relative './rubagotchi'

class GameManager
  attr_accessor :user_interface, :rubagotchi

  def initialize(user_interface = UserInterface.new, rubagotchi = nil)
    @user_interface = user_interface
    @rubagotchi = rubagotchi
  end

  def go_to_main_menu(user_input = nil)
    @user_interface.render_main_menu
    get_user_input(user_input)
    case @user_input
    when '1'
      go_to_new_rubagotchi_menu
    else
      @user_interface.render_invalid_input_error
      go_to_main_menu
    end
  end

  def go_to_new_rubagotchi_menu(user_input = nil, rubagotchi = nil)
    @user_interface.render_name_input_prompt
    get_user_input(user_input)
    create_new_rubagotchi(@user_input) unless rubagotchi
    go_to_rubagotchi_interaction_menu
  end

  def go_to_rubagotchi_interaction_menu(user_input = nil)
    @user_interface.render_rubagotchi_interaction_menu
    get_user_input(user_input)
    case @user_input
    when '1'
      check_rubagotchi_hunger
    when '2'
      feed_rubagotchi
    when '3'
      go_to_confirm_quit_menu
    else
      @user_interface.render_invalid_input_error
      go_to_rubagotchi_interaction_menu
    end
  end

  def go_to_confirm_quit_menu(user_input = nil)
    @user_interface.render_quit_warning_message
    get_user_input(user_input)
    case @user_input
    when '1'
      go_to_main_menu
    when '2'
      go_to_rubagotchi_interaction_menu
    else
      @user_interface.render_invalid_input_error
      go_to_confirm_quit_menu
    end
  end

private
  def check_rubagotchi_hunger
    if @rubagotchi.is_hungry?
      @user_interface.render_is_hungry_message
    else
      @user_interface.render_is_not_hungry_message
    end
  end

  def feed_rubagotchi
    @rubagotchi.feed
    @user_interface.render_rubagotchi_fed_message
  end

  def get_user_input(user_input)
    @user_input = (user_input ? user_input : gets.chomp)
  end

  def create_new_rubagotchi(name)
    @rubagotchi = Rubagotchi.new(name)
    @user_interface.rubagotchi_name = name
  end
end
