require 'game_manager'

describe GameManager do
  before(:each) do
    @user_interface = double(:user_interface)
    allow(@user_interface).to receive(:render_main_menu)

    @game_manager = GameManager.new(@user_interface)
  end

  describe '#Initialize' do
    it 'Initializes with a user interface' do
      expect(@game_manager.user_interface).to eq(@user_interface)
    end

    it 'Goes to the main menu' do
      expect_any_instance_of(GameManager).to receive(:go_to_main_menu)
      GameManager.new
    end
  end

  describe '#Go To Main Menu' do
    it 'Calls render main menu on user interface' do
      expect(@user_interface).to receive(:render_main_menu)
      @game_manager.go_to_main_menu
    end
  end
end
