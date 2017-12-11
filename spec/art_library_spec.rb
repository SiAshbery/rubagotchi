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
        "                                        XXXXXX\n"\
        "                                      XXXXXXXXX\n"\
        "                                      XXXXXXXXXX\n"\
        "                                      XXXXX XXXX\n"\
        "                                      XXXXXXXXX\n"\
        "                                        X XXXX\n"\
        "                                           X\n"\
        "                                            X\n"\
        "                                           X\n"\
        "                                          X\n"\
        "                                           X\n"\
        "                                          X\n"\
        "                                        XX\n"\
        "                                    X X   X X\n"\
        "                             X X XX            XXX\n"\
        "                           XXX                   XXXXX\n"\
        "                        XXd                           XXXX\n"\
        "                      XX                                  XX\n"\
        "                     XX                                      XX\n"\
        "                   XX                                        XX\n"\
        "                  XX      XXXXXX             XXXXXXX          XXX\n"\
        "                X      XXXX   XXXX        XXXX    XXX          XX\n"\
        "               XX     XXXXXX   XXX       XXXXXX   XXXX           X\n"\
        "              X       XXXXXXXXXXXX       XXXXXXXXXXXXX           X\n"\
        "              X       XXXXXXXXXXXX       XXXXXXXXXXXX            X\n"\
        "              X         XXXXXXXXX          XXXXXXXXX             X\n"\
        "              X                                                 X\n"\
        "              X                                                 X\n"\
        "              XX                                                X\n"\
        "              X                                               XX\n"\
        "               XX            X       X           X              XX\n"\
        "                X            XXX    XXX         XX              XXXXX\n"\
        "               XXXX              XXXXXX XXXXXXXXX               XX  XXXXXXX\n"\
        "              XX  X                                              X          XX\n"\
        "            XX                                                        XXXX\n"\
        "          XXX                                                 XXXXXXX\n"\
        "            XXXXXXX                                      XXXXXXX\n"\
        "              XXXXXXXXXXXXXX        XXXXXXXXXXXXXXXXXXX\n"\
        "                            XXXXXXXXX\n"
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
