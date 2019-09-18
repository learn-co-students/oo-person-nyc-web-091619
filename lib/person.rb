# your code goes here
# The happiness and hygiene points should be able to change, however the maximum and minimum points for both happiness and hygiene should be 10 and 0 respectively
# The amount in the bank account should also be able to change, though it has no max or min.
class Person
    attr_reader :name, :hygiene, :happiness
    attr_accessor :bank_account, :friend

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @friend = []
    end

    def hygiene=(person_hygiene)
        if person_hygiene < 0 
            @hygiene = 0
        elsif person_hygiene > 10
            @hygiene = 10
        else
            @hygiene = person_hygiene
        end
    end

    def happiness=(person_happiness)
        if person_happiness < 0 
            @happiness = 0
        elsif person_happiness > 10
            @happiness = 10
        else
            @happiness = person_happiness
        end
    end

    def clean?
        @hygiene > 7 
    end

    def happy?
        @happiness > 7 
    end

    def get_paid(salary)
        @bank_account += salary
        return "all about the benjamins"
    end

    def take_bath 
        self.hygiene += 4
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        return "♪ another one bites the dust ♫"

    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        return "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness -= 2
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end
    end
end # End of person class
