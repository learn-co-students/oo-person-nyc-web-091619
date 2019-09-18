class Person

    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(num)
        if num > 0 && num < 10
        # if num.(0..10)
            @happiness = num
        elsif num >= 10
            @happiness = 10
        elsif num < 0
            @happiness = 0
        end
    end

    def hygiene=(num)
        if num > 0 && num < 10
        # if num.(0..10)
            @hygiene = num
        elsif num >= 10
            @hygiene = 10
        elsif num < 0
            @hygiene = 0
        end
    end

    def happy?
        if @happiness > 7
            return true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            return true
        else
            false
        end
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
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self.happiness -= 2
            friend.happiness -= 2

            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self.happiness += 1
            friend.happiness += 1

            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

 end

