require 'rubagotchi'

describe Rubagotchi do

    subject(:rubagotchi) { described_class.new('Snuffles') }

    describe '#initialize' do
        it 'Is created with a name' do
            expect(rubagotchi.name).to eq('Snuffles')
        end
    end

end