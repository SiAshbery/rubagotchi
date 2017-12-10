class UserInterface
    def render_main_menu
        puts "Welcome to Rubagotchi!\n"\
             "Please input a number from the menu to make your selection.\n"\
             "1: Hatch a new Rubagotchi."
    end

    def render_rubagotchi_interaction_menu(rubagotchi_name)
        puts "#{rubagotchi_name} is awake!\n"\
             "Please input a number from the menu to make your selection.\n"\
             "1: Check #{rubagotchi_name}'s hunger.\n"\
             "2: Feed #{rubagotchi_name}."
    end

    def render_invalid_input_error
      puts "I'm sorry, I don't understand..."
    end

    def render_name_input_prompt
      puts "Please input a name for your Rubagotchi."
    end
end
