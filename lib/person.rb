# your code goes here
require 'pry'
class Person
    @@people = []

    attr_reader :name, :hygiene, :happiness
    attr_accessor   :bank_account

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@people << self
    end

    def clean?
        @hygiene > 7
    end
    
    # def happiness=(points)
    #     points = 0 if points < 0
    #     points > 10 ? @happiness = 10 : @happiness = points
    # end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def bank_account=(ammount)
        @bank_account += ammount
    end

    def hygiene=(points)
        #binding.pry
        @hygiene = points
        @hygiene = 0 if points < 0
        @hygiene = 10 if points > 10
    end

    def take_bath
        #binding.pry
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def happiness=(points)
        @happiness = points
        @happiness = 0 if points < 0
        @happiness = 10 if points > 10
    end

    # def happiness
    # end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def self.find_user(name)
        @@all.select {|person| person.name = name}
    end

    def call_friend(friend)
        friend_called = Person.find_user(friend)
        self.happiness += 3
        friend_called.happiness += 3
    end

end