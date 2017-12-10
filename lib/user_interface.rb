class UserInterface
  attr_writer :rubagotchi_name

    def initialize
      @rubagotchi_name = nil
    end

    def render_main_menu
        puts "Welcome to Rubagotchi!\n"\
             "Please input a number from the menu to make your selection.\n"\
             "1: Hatch a new Rubagotchi."
    end

    def render_rubagotchi_interaction_menu
        puts "#{@rubagotchi_name} is awake!\n"\
             "Please input a number from the menu to make your selection.\n"\
             "1: Check #{@rubagotchi_name}'s hunger.\n"\
             "2: Feed #{@rubagotchi_name}."
    end

    def render_invalid_input_error
      puts "I'm sorry, I don't understand..."
    end

    def render_name_input_prompt
      puts "Please input a name for your Rubagotchi."
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

    def render_quit_warning_message
      puts "Are you sure you want to quit?"\
           " Little Shuffles will cease to be...\n"\
           "1: Yes I want to get on with my life\n"\
           "2: Noooo #{@rubagotchi_name} I'm sorry!"
    end

    def render_goodbye_message
      puts "See You Space Cowboy..."
    end
end
