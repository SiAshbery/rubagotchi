require 'game_manager'

describe GameManager do

  subject(:game_manager) { described_class.new() }

  describe '#Initialize' do

    before(:each) do
      @user_interface = double(:user_interface)
      allow(@user_interface).to receive(:render_main_menu)

      @game_manager = GameManager.new(@user_interface)
    end

    it 'Initializes with a user interface' do
      expect(@game_manager.user_interface).to eq(@user_interface)
    end

    it 'Calls render main menu on user interface' do
      expect(@user_interface).to have_received(:render_main_menu)
    end

  end
end
