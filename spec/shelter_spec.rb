require 'rspec'
require './lib/shelter'

RSpec.describe Shelter do

  # Iteration 1
  describe '#initialize' do
    it 'is a Shelter' do
      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter).to be_a(Shelter)
    end

    it 'can read the name' do
      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.name).to eq('Denver Animal Shelter')
    end

    it 'can read the capacity' do
      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.capacity).to eq(5)
    end

    it 'has no pets by default' do
      shelter = Shelter.new('Denver Animal Shelter', 5)
      expect(shelter.pets).to eq []
    end
  end

  # Iteration 2
  describe '#add_pet' do
    it 'returns a list of pets' do
      shelter = Shelter.new('Denver Animal Shelter', 5)
      shelter.add_pet('Salem')
      shelter.add_pet('Beethoven')
      shelter.add_pet('Spot')
      shelter.add_pet('Jonesy')

      expect(shelter.pets).to eq(['Salem', 'Beethoven', 'Spot', 'Jonesy'])
    end
  end 

  describe '#call_pets' do
      it 'returns a list of names with exclamation points appended' do
        shelter = Shelter.new('Denver Animal Shelter', 5)
        shelter.add_pet('Salem')
        shelter.add_pet('Beethoven')
        shelter.add_pet('Spot')
        shelter.add_pet('Jonesy')

        expect(shelter.call_pets).to eq(['Salem!', 'Beethoven!', 'Spot!', 'Jonesy!'])
      end
    end
end

#Iteration 3

# var shelter defined Shelter.new('Denver Animal Shelter', 3)
  # we are setting .capcity equal to 3 now
# if .over_capcity? is > 3 it is over capacity = true if it < 3 it is under capacity = false
  

describe "#over_capacity" do

  it 'returns false if capacity is less than 3' do
    shelter = Shelter.new('Denver Animal Shelter', 3)
    shelter.add_pet('Salem')
    shelter.add_pet('Beethoven')

    expect(shelter.over_capacity?).to eq(false)
  end

  it 'returns true if capacity is greater than 3' do
    shelter = Shelter.new('Denver Animal Shelter', 3)
    shelter.add_pet('Salem')
    shelter.add_pet('Beethoven')
    shelter.add_pet('Spot')
    shelter.add_pet('Jonesy')

    expect(shelter.over_capacity?).to eq(true)
  end

end