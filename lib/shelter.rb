class Shelter
    attr_reader :name, :capacity, :pets

    def initialize(name, capacity)
        @name = name
        @capacity = capacity
        @pets = []
    end

    def add_pet(pet_name)
        @pets << pet_name
    end

    def call_pets
        pets.map do |name|
        "#{name}!"
        end
    end

    def over_capacity?
         @pets.length > @capacity  
    end
end