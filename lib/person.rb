# your code goes here
require "pry"

class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account

    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
    end

    def hygiene=(num)
        num >= 0 ? (num <= 10? @hygiene = num : @hygiene = 10) : @hygiene = 0
    end

    def happiness=(num)
        num >= 0 ? (num <= 10? @happiness = num : @happiness = 10) : @happiness = 0
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(amt)
        @bank_account += amt
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4 
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        '♪ another one bites the dust ♫'
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(friend, topic)
        case topic
        when "politics"
            self.happiness -= 2
            friend.happiness -= 2
            "blah blah partisan blah lobbyist"
        when "weather"
            self.happiness += 1
            friend.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end