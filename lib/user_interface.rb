require_relative './art_library'

class UserInterface
  attr_writer :rubagotchi_name

    def initialize(art_library = ArtLibrary.new)
      @rubagotchi_name = nil
      @art_library = art_library
    end

    def render_main_menu
        puts @art_library.main_title +
             "Welcome to Rubagotchi!\n"\
             "Please input a number from the menu to make your selection.\n"\
             "1: Hatch a new Rubagotchi.\n"\
             "2: Quit Rubagotchi.\n" +
             @art_library.large_horizontal_divider
    end

    def render_rubagotchi_interaction_menu
        puts @art_library.main_title +
             @art_library.rubagotchi_idle_pose +
             "#{@rubagotchi_name} is awake!\n"\
             "Please input a number from the menu to make your selection.\n"\
             "1: Check #{@rubagotchi_name}'s hunger.\n"\
             "2: Feed #{@rubagotchi_name}.\n"\
             "3: Return to main menu.\n" +
             @art_library.large_horizontal_divider
    end

    def render_quit_warning_menu
      puts @art_library.main_title +
           "Are you sure you want to quit?"\
           " Little #{@rubagotchi_name} will cease to be...\n"\
           "1: Yes I want to get on with my life.\n"\
           "2: Noooo #{@rubagotchi_name} I'm sorry!\n" +
           @art_library.large_horizontal_divider
    end

    def render_invalid_input_error
      puts "I'm sorry, I don't understand..."
    end

    def render_name_input_prompt
      puts "Please input a name for your Rubagotchi."
    end

    def render_press_any_key_prompt
      puts "Press any key to continue."
    end

    def render_is_hungry_message
      puts "#{@rubagotchi_name} needs noms, STAT!"
    end

    def render_is_not_hungry_message
      puts "#{@rubagotchi_name} isn't hungry right now."
    end

    def render_rubagotchi_fed_message
      puts "You fed a sandwich to #{@rubagotchi_name}."
    end

    def render_goodbye_message
      puts "See You Space Cowboy..."
    end
end
