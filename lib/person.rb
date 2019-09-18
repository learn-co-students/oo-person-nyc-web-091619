# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :hygiene, :happiness
    def initialize(name)
        @name = name
        @happiness = 8
        @hygiene = 8
        @bank_account = 25
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
        @hygiene += 4
        @hygiene > 10 ? @hygiene = 10 : @hygiene
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end


end