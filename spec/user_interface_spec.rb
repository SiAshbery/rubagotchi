require 'user_interface'

describe UserInterface do

    subject(:user_interface) { described_class.new() }

    describe '#Main Menu' do
        it 'renders the menu uptions' do
            expect { user_interface.render_main_menu }.
              to output("Welcome to Rubagotchi!\n"\
                        "Please input a number from the menu to make your selection\n"\
                        "1: Hatch a new Rubagotchi\n").to_stdout
        end
    end

end
