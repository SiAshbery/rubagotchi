require 'user_interface'

describe UserInterface do

    subject(:user_interface) { described_class.new() }

    describe '#Prompts' do
        it 'renders the menu uptions' do
            expect { user_interface.render_main_menu }.
              to output("Welcome to Rubagotchi!\n"\
                        "Please input a number from the menu to make your selection.\n"\
                        "1: Hatch a new Rubagotchi.\n").to_stdout
        end
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

end
