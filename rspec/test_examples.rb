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

