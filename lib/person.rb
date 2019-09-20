# your code goes here
require 'pry'

class Person

    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize (name, balance=25, happylevel=8, hygienelevel=8 )
        @name = name
        @bank_account = balance
        @happiness = happylevel
        @hygiene = hygienelevel
    end

    def happiness=(level)
        if level <= 10 && level >= 0
           @happiness=level
        elsif level > 10
            @happiness=10
        elsif level < 0
            @happiness=0
        end
    end 


    def hygiene=(level)
        if level <= 10 && level >= 0
           @hygiene=level
        elsif level > 10
            @hygiene=10
        elsif level < 0
            @hygiene=0
        end
    end 

    def clean?
        if @hygiene>7
            true
        else
            false
        end
    end

    def happy?
        if @happiness>7
            true
        else
            false
        end
    end

    def get_paid (salary)
        @bank_account+=salary
        'all about the benjamins'
    end

    def take_bath
        @hygiene+=4
        # binding.pry    
        self.hygiene=(@hygiene)

        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        @hygiene-=3
        # binding.pry    
        self.hygiene=(@hygiene)

        @happiness+=2
        self.happiness=(@happiness)

        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        [friend, self].each {
            |o| o.happiness += 3
    }
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            [self, person].each { |o| o.happiness -= 2 } 
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            [self, person].each { |o| o.happiness += 1 } 
            return "blah blah sun blah rain"
        else
            # [self, person].each { |o| o.happiness -= 2 } 
            return "blah blah blah blah blah"
        end
    end

end
