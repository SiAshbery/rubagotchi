require 'user_interface'

describe UserInterface do

    subject(:user_interface) { described_class.new() }

    describe '#Menus' do
        it 'renders the main menu uptions' do
            expect { user_interface.render_main_menu }.
              to output("Welcome to Rubagotchi!\n"\
                        "Please input a number from the menu to make your selection.\n"\
                        "1: Hatch a new Rubagotchi.\n").to_stdout
        end

        it 'renders the rubagotchi interaction menu uptions' do
            expect { user_interface.render_rubagotchi_interaction_menu('Snuffles') }.
              to output("Snuffles is awake!\n"\
                        "Please input a number from the menu to make your selection.\n"\
                        "1: Check Snuffles's hunger.\n"\
                        "2: Feed Snuffles.\n").to_stdout
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
        expect { user_interface.render_is_hungry_message('Snuffles') }.
          to output("Snuffles needs noms, STAT!\n").to_stdout
      end

      it 'renders is not hungry message' do
        expect { user_interface.render_is_not_hungry_message('Snuffles') }.
          to output("Snuffles isn't hungry right now.\n").to_stdout
      end

      it 'renders rubagotchi fed message' do
        expect { user_interface.render_rubagotchi_fed_message('Snuffles') }.
          to output("You fed a sandwich to Snuffles.\n").to_stdout
      end
    end

end
