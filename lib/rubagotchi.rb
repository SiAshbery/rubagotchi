class Rubagotchi
    attr_accessor :name

    def initialize(name)
        @name = name
        @hunger = 0
    end

    def is_hungry?
        @hunger >= 1
    end

    def add_hunger(amount)
        @hunger += amount
    end

end