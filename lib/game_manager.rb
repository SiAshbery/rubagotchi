require_relative './user_interface'
require_relative './rubagotchi'

class GameManager
  attr_accessor :user_interface, :rubagotchi

  def initialize(user_interface = UserInterface.new, rubagotchi = nil)
    @user_interface = user_interface
    @rubagotchi = rubagotchi
  end

  def go_to_main_menu(user_input = nil)
    loop do
      @user_interface.render_main_menu
      case get_user_input(user_input)
      when '1'
        go_to_new_rubagotchi_menu
        break
      when '2'
        quit_game
        break
      else
        @user_interface.render_invalid_input_error
        confirm_continue_to(:main_menu)
        break
      end
    end
  end

  def go_to_new_rubagotchi_menu(user_input = nil, rubagotchi = nil)
    @user_interface.render_name_input_prompt
    create_new_rubagotchi(get_user_input(user_input)) unless rubagotchi
    go_to_rubagotchi_interaction_menu
  end

  def go_to_rubagotchi_interaction_menu(user_input = nil)
    loop do
      @user_interface.render_rubagotchi_interaction_menu
      case get_user_input(user_input)
      when '1'
        check_rubagotchi_hunger
        break
      when '2'
        feed_rubagotchi
        break
      when '3'
        go_to_confirm_quit_menu
        break
      else
        @user_interface.render_invalid_input_error
        confirm_continue_to(:interaction_menu)
        break
      end
    end
  end

  def go_to_confirm_quit_menu(user_input = nil)
    loop do
      @user_interface.render_quit_warning_menu
      case get_user_input(user_input)
      when '1'
        go_to_main_menu
        break
      when '2'
        go_to_rubagotchi_interaction_menu
        break
      else
        @user_interface.render_invalid_input_error
        confirm_continue_to(:quit_menu)
        break
      end
    end
  end

private

  def check_rubagotchi_hunger
    if @rubagotchi.is_hungry?
      @user_interface.render_is_hungry_message
    else
      @user_interface.render_is_not_hungry_message
    end
    confirm_continue_to(:interaction_menu)
  end

  def feed_rubagotchi
    @rubagotchi.feed
    @user_interface.render_rubagotchi_fed_message
    confirm_continue_to(:interaction_menu)
  end

  def confirm_continue_to(menu_selection)
    @user_interface.render_press_any_key_prompt
    gets
    case menu_selection
    when :main_menu 
      go_to_main_menu
    when :interaction_menu
      go_to_rubagotchi_interaction_menu
    when :quit_menu
      go_to_confirm_quit_menu
    else 
      @user_interface.render_fatal_error
      quit_game
    end
  end

  def get_user_input(user_input)
    user_input ? user_input : gets.chomp
  end

  def create_new_rubagotchi(name)
    @rubagotchi = Rubagotchi.new(name)
    @user_interface.rubagotchi_name = name
  end

  def quit_game
    @user_interface.render_goodbye_message
    exit
  end
end
