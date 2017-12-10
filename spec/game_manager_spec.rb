require 'game_manager'

describe GameManager do
  let(:rubagotchi) { double :rubagotchi }

  before(:each) do
    @user_interface = double(:user_interface)
    allow(@user_interface).to receive(:render_main_menu)
    allow(@user_interface).to receive(:render_invalid_input_error)

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
      @game_manager.go_to_main_menu('1')
    end

    it 'Option 1 creates a new rubagotchi' do
      @game_manager.go_to_main_menu('1')
      expect(@game_manager.rubagotchi).to be_a Rubagotchi
    end

    it 'Returns an error if input not recognised' do
      expect(@user_interface).to receive(:render_invalid_input_error)
      @game_manager.go_to_main_menu('splunge')
    end
  end
end
