# your code goes here
class Person
    @@people = []

    attr_reader :name, :bank_account, :clean, :happiness

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @clean = 8
    end

    def clean?
        @clean > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins."
    end

    def take_bath
        @clean >= 6 ? @clean = 10 : @clean += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

end