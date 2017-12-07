require 'rubagotchi'

describe Rubagotchi do

    subject(:rubagotchi) { described_class.new('Snuffles') }

    describe '#initialize' do
        it 'Is created with a name' do
            expect(rubagotchi.name).to eq('Snuffles')
        end

        it 'Starts life with a full belly' do
            expect(rubagotchi.is_hungry?).to eq(false)
        end
    end

    describe '#hunger' do
        it 'Can get hungry' do
            rubagotchi.add_hunger(1)
            expect(rubagotchi.is_hungry?).to eq(true)
        end
    end

end