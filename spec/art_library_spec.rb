require 'art_library'

describe ArtLibrary do

  before(:each) do
    @art_library = ArtLibrary.new
  end

  describe '#Titles' do
    before(:each) do
      allow(@art_library).to receive(:large_horizontal_divider).and_return("")
    end

    it 'return main title' do
      expect(@art_library.main_title).to eq(
      "    ,------. ,--. ,--.,-----.    ,---.   ,----.    ,-----. ,--------. ,-----.,--.  ,--.,--.\n"\
      "    |  .--. '|  | |  ||  |) /_  /  O   )'  .-./   '  .-.  ''--.  .--''  .--./|  '--'  ||  |\n"\
      "    |  '--'.'|  | |  ||  .-.  !|  .-.  ||  | .---.|  | |  |   |  |   |  |    |  .--.  ||  |\n"\
      "    |  | )  )'  '-'  '|  '--' /|  | |  |'  '--'  |'  '-'  '   |  |   '  '--'-|  |  |  ||  |\n"\
      "    `--' '--' `-----' `------' `--' `--' `------'  `-----'    `--'    `-----'`--'  `--'`--'\n"
      )
    end

    it 'Calls large_horizontal_divider' do
      expect(@art_library).to receive(:large_horizontal_divider)
      @art_library.main_title
    end
  end

  describe '#Rubagotchi Art' do
    before(:each) do
      allow(@art_library).to receive(:large_horizontal_divider).and_return("")
    end

    it 'Returns the idle pose for a rubagotchi' do
      expect(@art_library.rubagotchi_idle_pose).to eq(
        "                                          |^|   |^|\n"\
        "                                          : )   ( :\n"\
        "                                         |   O O   |\n"\
        "                                         (  )-v-(  )\n"\
        "                                          [m_____m]\n"
      )
    end

    it 'Calls large_horizontal_divider' do
      expect(@art_library).to receive(:large_horizontal_divider)
      @art_library.rubagotchi_idle_pose
    end
  end

  describe '#Ui Elements' do
    it 'Returns a horizontal divider' do
      expect(@art_library.large_horizontal_divider).to eq(
        "\n"\
        "_.--.__.-'^^`-.__.--.__.-'^^`-.__.--.__.-'^^`-.__.--.__.-'^^`-.__.--.__.-'^^`-.__.--.__.-'^^`-._\n"\
        "^`--'^^`-.__.-'^^`--'^^`-.__.-'^^`--'^^`-.__.-'^^`--'^^`-.__.-'^^`--'^^`-.__.-'^^`--'^^`-.__.-'^\n"\
        "\n"
      )
    end
  end

end
