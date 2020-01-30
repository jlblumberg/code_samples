# This file contains a commented list of tests that can be used in rspec

# test that an instance of a class (in this case, 'Bike') responds to a method (working?)
# note that method has been symbolized
describe Bike do
  it 'responds to the method working?' do
    is_expected.to respond_to(:working?)
  end
  # another way to do this is to use 'subject' which acts as the new member of the class)
  it 'new object should respond to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end
end

# test that some object is a member of the class you expect it to be a member of
# subject in this case is an instance of DockingStation class.
describe DockingStation do
  it 'should get a working bike' do
    expect(subject.release_bike).to be_a Bike
  end
end

# test for truthyness / falsyness
describe DockingStation do
  it 'returns true when docking' do
    expect(subject.dock(@bike)).to be true
  end
end

# Check for number of arguments
describe '#number_to_numeral' do
  it 'accepts a single argument' do
    expect { subject.number_to_numeral(4) }.not_to raise_error
  end
end

# How to use 'subject'. It is a way to refer to a new object of a class
describe 'A calculator' do
  describe 'does arithmetic' do
    describe '#add' do
    subject { Arithmetic.new } # creates a new instance of the Arithmetic class so that it can be refered to by 'subject'.
      it 'adds two numbers' do
        expect(subject.add(2, 3)).to eq 5
        expect(subject.add(6, 4)).to eq 10
      end
    end
  end
end

# check for the output of a method using eq
describe '#add' do
    subject { Arithmetic.new } # creates a new instance of the Arithmetic class so that it can be refered to by 'subject'.
      it 'adds two numbers' do
        expect(subject.add(2, 3)).to eq 5
        expect(subject.add(6, 4)).to eq 10
      end
    end

# check for the value of initialized defaults
it 'Has a default capacity of 1 which can be overwritten' do
    plane = Planes.new
    expect(Airport.new.instance_variable_get(:@capacity)).to eq(1)
    expect(Airport.new(3).instance_variable_get(:@capacity)).to eq(3)
  end

# use let statements with doubles 
let(:exit_station) { double('aldgate')}
it 'should deduct the minimum fare from the balance' do
  expect { oyster.touch_out(exit_station) }.to change{ oyster.balance }.by(-OysterCard::MINIMUM_FARE)
end

# define a name for subject
describe OysterCard do
  subject(:oyster) { described_class.new }
  it 'returns true if tapped in' do
    oyster.top_up(OysterCard::CARD_LIMIT)
    expect(oyster.in_journey?).to eq (true)
  end
end

# use before to run a set of steps before each 'it' block
describe "#touch_out" do
  before (:each) do
      oyster.top_up(OysterCard::MINIMUM_FARE)
      oyster.touch_in(entry_station)
  end
  it 'should change in journey to false' do
    # the two lines listed in the before statement are going to run here
      oyster.touch_out(exit_station)
      expect(oyster).not_to be_in_journey
  end

  it 'should deduct the minimum fare from the balance' do
    # the two lines listed in the before statement are going to run here
      expect { oyster.touch_out(exit_station) }.to change{ oyster.balance }.by(-OysterCard::MINIMUM_FARE)
  end
end
