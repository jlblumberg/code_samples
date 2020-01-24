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


