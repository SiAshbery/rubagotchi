require 'art_library'

describe ArtLibrary do

  subject(:art_library) { described_class.new() }

  describe '#Titles' do
    it 'return main title' do
      expect(art_library.main_title).to eq(
      ",------. ,--. ,--.,-----.    ,---.   ,----.    ,-----. ,--------. ,-----.,--.  ,--.,--.\n"\
      "|  .--. '|  | |  ||  |) /_  /  O   )'  .-./   '  .-.  ''--.  .--''  .--./|  '--'  ||  |\n"\
      "|  '--'.'|  | |  ||  .-.  !|  .-.  ||  | .---.|  | |  |   |  |   |  |    |  .--.  ||  |\n"\
      "|  | )  )'  '-'  '|  '--' /|  | |  |'  '--'  |'  '-'  '   |  |   '  '--'-|  |  |  ||  |\n"\
      "`--' '--' `-----' `------' `--' `--' `------'  `-----'    `--'    `-----'`--'  `--'`--'\n" 
      )
    end
  end

  describe '#Rubagotchi Art' do
    it 'Returns the idle pose for a rubagotchi' do
      expect(art_library.rubagotchi_idle_pose).to eq(
        "                                     XXXXXX\n"\
        "                                   XXXXXXXXX\n"\
        "                                   XXXXXXXXXX\n"\
        "                                   XXXXX XXXX\n"\
        "                                   XXXXXXXXX\n"\
        "                                     X XXXX\n"\
        "                                        X\n"\
        "                                         X\n"\
        "                                        X\n"\
        "                                       X\n"\
        "                                        X\n"\
        "                                       X\n"\
        "                                     XX\n"\
        "                                 X X   X X\n"\
        "                          X X XX            XXX\n"\
        "                        XXX                   XXXXX\n"\
        "                     XXd                           XXXX\n"\
        "                   XX                                  XX\n"\
        "                  XX                                      XX\n"\
        "                XX                                        XX\n"\
        "               XX      XXXXXX             XXXXXXX          XXX\n"\
        "             X      XXXX   XXXX        XXXX    XXX          XX\n"\
        "            XX     XXXXXX   XXX       XXXXXX   XXXX           X\n"\
        "           X       XXXXXXXXXXXX       XXXXXXXXXXXXX           X\n"\
        "           X       XXXXXXXXXXXX       XXXXXXXXXXXX            X\n"\
        "           X         XXXXXXXXX          XXXXXXXXX             X\n"\
        "           X                                                 X\n"\
        "           X                                                 X\n"\
        "           XX                                                X\n"\
        "           X                                               XX\n"\
        "            XX            X       X           X              XX\n"\
        "             X            XXX    XXX         XX              XXXXX\n"\
        "            XXXX              XXXXXX XXXXXXXXX               XX  XXXXXXX\n"\
        "           XX  X                                              X          XX\n"\
        "         XX                                                        XXXX\n"\
        "       XXX                                                 XXXXXXX\n"\
        "         XXXXXXX                                      XXXXXXX\n"\
        "           XXXXXXXXXXXXXX        XXXXXXXXXXXXXXXXXXX\n"\
        "                         XXXXXXXXX\n"
      )
    end
  end

end
