require 'player'

describe Player do
    subject(:carlton) { Player.new('carlton') }

    describe '#name' do
        it 'should display player name' do
            expect(subject.name).to eq('carlton')
        end
    end
end

