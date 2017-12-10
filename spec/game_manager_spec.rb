require 'game_manager'

describe GameManager do
  let(:rubagotchi) { double :rubagotchi }

  before(:each) do
    @user_interface = double(:user_interface)
    allow(@user_interface).to receive(:render_main_menu)
    allow(@user_interface).to receive(:render_invalid_input_error)
    allow(@user_interface).to receive(:render_name_input_prompt)

    @game_manager = GameManager.new(@user_interface)
  end

  describe '#Initialize' do
    it 'Initializes with a user interface' do
      expect(@game_manager.user_interface).to eq(@user_interface)
    end
  end

  describe '#Go To Main Menu' do
    it 'Calls render main menu on user interface' do
      expect(@user_interface).to receive(:render_main_menu)
      allow(@game_manager).to receive(:go_to_new_rubagotchi_menu)
      @game_manager.go_to_main_menu('1')
    end

    it 'Option 1 goes to new rubagotchi menu' do
      expect(@game_manager).to receive(:go_to_new_rubagotchi_menu)
      @game_manager.go_to_main_menu('1')
    end

    it 'Returns an error if input not recognised' do
      expect(@user_interface).to receive(:render_invalid_input_error)
      @game_manager.go_to_main_menu('splunge')
    end
  end

  describe '#Got to new rubagotchi menu' do
    it 'Renders name input prompt' do
      expect(@user_interface).to receive(:render_name_input_prompt)
      @game_manager.go_to_new_rubagotchi_menu('snuffles')
    end

    it 'Creates a new rubagotchi' do
      @game_manager.go_to_new_rubagotchi_menu('snuffles')
      expect(@game_manager.rubagotchi).to be_a Rubagotchi
    end
  end
end
