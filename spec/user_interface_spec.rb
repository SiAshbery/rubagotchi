require 'user_interface'

describe UserInterface do

    subject(:user_interface) { described_class.new() }

    before(:each) do
      user_interface.rubagotchi_name = 'Shuffles'
    end

    describe '#Menus' do
        it 'renders the main menu uptions' do
            expect { user_interface.render_main_menu }.
              to output("Welcome to Rubagotchi!\n"\
                        "Please input a number from the menu to make your selection.\n"\
                        "1: Hatch a new Rubagotchi.\n"\
                        "2: Quit Rubagotchi.\n").to_stdout
        end

        it 'renders the rubagotchi interaction menu uptions' do
            expect { user_interface.render_rubagotchi_interaction_menu }.
              to output("Shuffles is awake!\n"\
                        "Please input a number from the menu to make your selection.\n"\
                        "1: Check Shuffles's hunger.\n"\
                        "2: Feed Shuffles.\n"\
                        "3: Return to main menu.\n").to_stdout
        end
    end

    describe '#Prompts' do
      it 'renders input name prompt' do
        expect { user_interface.render_name_input_prompt }.
          to output("Please input a name for your Rubagotchi.\n").to_stdout
      end
    end

    describe '#Errors' do
      it 'renders invalid input error' do
        expect { user_interface.render_invalid_input_error }.
          to output("I'm sorry, I don't understand...\n").to_stdout
      end
    end

    describe '#Messages' do
      it 'renders is hungry message' do
        expect { user_interface.render_is_hungry_message }.
          to output("Shuffles needs noms, STAT!\n").to_stdout
      end

      it 'renders is not hungry message' do
        expect { user_interface.render_is_not_hungry_message }.
          to output("Shuffles isn't hungry right now.\n").to_stdout
      end

      it 'renders rubagotchi fed message' do
        expect { user_interface.render_rubagotchi_fed_message }.
          to output("You fed a sandwich to Shuffles.\n").to_stdout
      end

      it 'renders quit warning message' do
        expect { user_interface.render_quit_warning_message }.
          to output("Are you sure you want to quit?"\
                    " Little Shuffles will cease to be...\n"\
                    "1: Yes I want to get on with my life\n"\
                    "2: Noooo Shuffles I'm sorry!\n").to_stdout
      end

      it 'Renders goodbye message' do
        expect { user_interface.render_goodbye_message }.
          to output("See You Space Cowboy...\n").to_stdout
      end
    end

end
