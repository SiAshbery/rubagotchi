require 'game_manager'

describe GameManager do

  before(:each) do
    @user_interface = double(:user_interface)
    allow(@user_interface).to receive(:render_main_menu)
    allow(@user_interface).to receive(:render_invalid_input_error)
    allow(@user_interface).to receive(:render_name_input_prompt)
    allow(@user_interface).to receive(:render_rubagotchi_interaction_menu)
    allow(@user_interface).to receive(:render_is_hungry_message)
    allow(@user_interface).to receive(:render_is_not_hungry_message)
    allow(@user_interface).to receive(:render_rubagotchi_fed_message)
    allow(@user_interface).to receive(:rubagotchi_name=)
    allow(@user_interface).to receive(:render_quit_warning_message)

    @rubagotchi = double(:rubagotchi)
    allow(@rubagotchi).to receive(:name)
    allow(@rubagotchi).to receive(:is_hungry?)
    allow(@rubagotchi).to receive(:feed)

    @game_manager = GameManager.new(@user_interface, @rubagotchi)
  end

  describe '#Initialize' do
    it 'Initializes with a user interface' do
      expect(@game_manager.user_interface).to eq(@user_interface)
    end
  end

  describe '#Go To Main Menu' do
    before(:each) do
      allow(@user_interface).to receive(:render_main_menu)
      allow(@game_manager).to receive(:go_to_new_rubagotchi_menu)
      allow(@game_manager).to receive(:go_to_rubagotchi_interaction_menu)
    end

    it 'Calls render main menu on user interface' do
      expect(@user_interface).to receive(:render_main_menu)
      @game_manager.go_to_main_menu('1')
    end

    it 'Option 1 goes to new rubagotchi menu' do
      expect(@game_manager).to receive(:go_to_new_rubagotchi_menu)
      @game_manager.go_to_main_menu('1')
    end

    it 'Returns an error if input not recognised' do
      expect(@user_interface).to receive(:render_invalid_input_error)
      allow(@game_manager).to receive(:gets).and_return("1\n")
      @game_manager.go_to_main_menu('splunge')
    end

    it 'Repeats menu if input is invalid' do
      expect(@game_manager).to receive(:go_to_main_menu)
      allow(@game_manager).to receive(:gets).and_return("1\n")
      @game_manager.go_to_main_menu('splunge')
    end
  end

  describe '#Go to new rubagotchi menu' do
    before(:each) do
      allow(@game_manager).to receive(:go_to_rubagotchi_interaction_menu)
    end

    it 'Calls render name input prompt on user interface' do
      expect(@user_interface).to receive(:render_name_input_prompt)
      @game_manager.go_to_new_rubagotchi_menu('Snuffles')
    end

    it 'Creates a new rubagotchi' do
      @game_manager.go_to_new_rubagotchi_menu('Snuffles')
      expect(@game_manager.rubagotchi).to be_a Rubagotchi
    end

    it 'Goes to rubagotchi interaction menu' do
      expect(@game_manager).to receive(:go_to_rubagotchi_interaction_menu)
      @game_manager.go_to_new_rubagotchi_menu('Snuffles')
    end
  end

  describe 'Go to interaction menu' do
    before(:each) do
      allow(@game_manager).to receive(:go_to_confirm_quit_menu)
    end
    it 'Calls render rubagotchi interaction menu on user interface' do
      expect(@user_interface).to receive(:render_rubagotchi_interaction_menu)
      @game_manager.go_to_rubagotchi_interaction_menu('1')
    end

    it 'Option 1 checks Rubagotchi hunger' do
      expect(@rubagotchi).to receive(:is_hungry?)
      @game_manager.go_to_rubagotchi_interaction_menu('1')
    end

    it 'Calls render is hungry message if Rubagotchi is hungry' do
      allow(@rubagotchi).to receive(:is_hungry?).and_return(true)
      expect(@user_interface).to receive(:render_is_hungry_message)
      @game_manager.go_to_rubagotchi_interaction_menu('1')
    end

    it 'Calls render is not hungry message if Rubagotchi is hungry' do
      allow(@rubagotchi).to receive(:is_hungry?).and_return(false)
      expect(@user_interface).to receive(:render_is_not_hungry_message)
      @game_manager.go_to_rubagotchi_interaction_menu('1')
    end

    it 'Calls feed on rubagotchi' do
      expect(@rubagotchi).to receive(:feed)
      @game_manager.go_to_rubagotchi_interaction_menu('2')
    end

    it 'Calls render rubagotchi fed message on user interface' do
      expect(@user_interface).to receive(:render_rubagotchi_fed_message)
      @game_manager.go_to_rubagotchi_interaction_menu('2')
    end

    it 'Goes to quit confirm menu' do
      expect(@game_manager).to receive(:go_to_confirm_quit_menu)
      @game_manager.go_to_rubagotchi_interaction_menu('3')
    end

    it 'Returns an error if input not recognised' do
      expect(@user_interface).to receive(:render_invalid_input_error)
      allow(@game_manager).to receive(:gets).and_return("1\n")
      @game_manager.go_to_rubagotchi_interaction_menu('splunge')
    end

    it 'Repeats menu if input is invalid' do
      expect(@game_manager).to receive(:go_to_rubagotchi_interaction_menu)
      allow(@game_manager).to receive(:gets).and_return("1\n")
      @game_manager.go_to_rubagotchi_interaction_menu('splunge')
    end
  end

  describe 'Go to confirm quit menu' do
    before(:each) do
      allow(@game_manager).to receive(:go_to_main_menu)
    end

    it 'Calls render quit warning message on user interface' do
      expect(@user_interface).to receive(:render_quit_warning_message)
      @game_manager.go_to_confirm_quit_menu('1')
    end

    it 'Quit to main menu' do
      expect(@game_manager).to receive(:go_to_main_menu)
      @game_manager.go_to_confirm_quit_menu('1')
    end

    it 'Returns to game' do
      expect(@game_manager).to receive(:go_to_rubagotchi_interaction_menu)
      @game_manager.go_to_confirm_quit_menu('2')
    end

    it 'Returns an error if input not recognised' do
      expect(@user_interface).to receive(:render_invalid_input_error)
      allow(@game_manager).to receive(:gets).and_return("1\n")
      @game_manager.go_to_confirm_quit_menu('splunge')
    end

    it 'Repeats menu if input is invalid' do
      expect(@game_manager).to receive(:go_to_confirm_quit_menu)
      allow(@game_manager).to receive(:gets).and_return("1\n")
      @game_manager.go_to_confirm_quit_menu('splunge')
    end
  end
end
