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