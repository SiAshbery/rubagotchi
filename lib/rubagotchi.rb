class Rubagotchi
    attr_accessor :name

    DEFAULT_HUNGER_AMOUNT = 0

    def initialize(name)
        @name = name
        @hunger = DEFAULT_HUNGER_AMOUNT
    end

    def is_hungry?
        @hunger >= 1
    end

    def digest(amount)
        @hunger += amount
    end

    def feed(amount)
        @hunger -= amount
    end

end