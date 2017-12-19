require 'user_interface'

describe UserInterface do

    before(:each) do
      @art_library = double(:art_library)
      allow(@art_library).to receive(:rubagotchi_idle_pose).and_return("")
      allow(@art_library).to receive(:main_title).and_return("")
      allow(@art_library).to receive(:large_horizontal_divider).and_return("")
      @user_interface = UserInterface.new(@art_library)
      @user_interface.rubagotchi_name = 'Shuffles'
    end

    describe '#Menus' do
      context '#Main menu' do
        it 'renders the main menu uptions' do
            expect { @user_interface.render_main_menu }.
              to output("Welcome to Rubagotchi!\n"\
                        "Please input a number from the menu to make your selection.\n"\
                        "1: Hatch a new Rubagotchi.\n"\
                        "2: Quit Rubagotchi.\n").to_stdout
        end

        it 'Calls main title from art_library' do
          expect(@art_library).to receive(:main_title)
          @user_interface.render_main_menu
        end

        it 'Calls large_horizontal_divider from art_library' do
          expect(@art_library).to receive(:large_horizontal_divider)
          @user_interface.render_main_menu
        end
      end

      context '#Interaction menu' do
        it 'renders the rubagotchi interaction menu uptions' do
            expect { @user_interface.render_rubagotchi_interaction_menu }.
              to output("Shuffles is awake!\n"\
                        "Please input a number from the menu to make your selection.\n"\
                        "1: Check Shuffles's hunger.\n"\
                        "2: Feed Shuffles.\n"\
                        "3: Return to main menu.\n").to_stdout
        end

        it 'Calls idle pose from art_library' do
          expect(@art_library).to receive(:rubagotchi_idle_pose)
          @user_interface.render_rubagotchi_interaction_menu
        end

        it 'Calls main title from art_library' do
          expect(@art_library).to receive(:main_title)
          @user_interface.render_rubagotchi_interaction_menu
        end

        it 'Calls large_horizontal_divider from art_library' do
          expect(@art_library).to receive(:large_horizontal_divider)
          @user_interface.render_rubagotchi_interaction_menu
        end
      end

      context '#Quit menu' do
        it 'renders quit warning menu' do
          expect { @user_interface.render_quit_warning_menu }.
            to output("Are you sure you want to quit?"\
                      " Little Shuffles will cease to be...\n"\
                      "1: Yes I want to get on with my life.\n"\
                      "2: Noooo Shuffles I'm sorry!\n").to_stdout
        end

        it 'Calls main title from art_library' do
          expect(@art_library).to receive(:main_title)
          @user_interface.render_quit_warning_menu
        end

        it 'Calls large_horizontal_divider from art_library' do
          expect(@art_library).to receive(:large_horizontal_divider)
          @user_interface.render_quit_warning_menu
        end
      end
    end

    describe '#Prompts' do
      it 'renders input name prompt' do
        expect { @user_interface.render_name_input_prompt }.
          to output("Please input a name for your Rubagotchi.\n").to_stdout
      end

      it 'renders press any key prompt' do
         expect { @user_interface.render_press_any_key_prompt }.
          to output("Press any key to continue.\n").to_stdout
      end
    end

    describe '#Errors' do
      it 'renders invalid input error' do
        expect { @user_interface.render_invalid_input_error }.
          to output("I'm sorry, I don't understand...\n").to_stdout
      end
    end

    describe '#Messages' do
      it 'renders is hungry message' do
        expect { @user_interface.render_is_hungry_message }.
          to output("Shuffles needs noms, STAT!\n").to_stdout
      end

      it 'renders is not hungry message' do
        expect { @user_interface.render_is_not_hungry_message }.
          to output("Shuffles isn't hungry right now.\n").to_stdout
      end

      it 'renders rubagotchi fed message' do
        expect { @user_interface.render_rubagotchi_fed_message }.
          to output("You fed a sandwich to Shuffles.\n").to_stdout
      end


      it 'Renders goodbye message' do
        expect { @user_interface.render_goodbye_message }.
          to output("See You Space Cowboy...\n").to_stdout
      end
    end

end
