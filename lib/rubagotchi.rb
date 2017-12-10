class Rubagotchi
    attr_accessor :name

    DEFAULT_HUNGER_AMOUNT = 0
    HUNGER_THRESHOLD = 1

    def initialize(name)
        @name = name
        @hunger = DEFAULT_HUNGER_AMOUNT
    end

    def is_hungry?
        @hunger >= HUNGER_THRESHOLD
    end

    def digest(amount = 1)
        @hunger += amount
    end

    def feed(amount = 1)
        @hunger -= amount
    end

end
