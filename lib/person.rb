# your code goes here
class Person
    attr_accessor 

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def name 
        @name
    end

    def bank_account=(bank_account)
        @bank_account = bank_account
    end
    
    def bank_account
        @bank_account
    end

    def happiness
        @happiness
    end

    def happiness=(num)
        if (num <= 10) && (num >= 0)
            @happiness = num
        elsif num < 0
            @happiness = 0
        elsif num > 10
            @happiness = 10
        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(num)
        if (num <= 10) && (num >= 0)
            @hygiene = num
        elsif num < 0
            @hygiene = 0
        elsif num > 10
            @hygiene = 10
        end
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def get_paid(amount)
        num = @bank_account + amount
        self.bank_account = num
        "all about the benjamins"
    end

    def take_bath
        num = @hygiene += 4 
        self.hygiene = num
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        number_happines = @happiness + 2
        self.happiness = number_happines
        number_hygiene = @hygiene -3
        self.hygiene = number_hygiene
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        rise_happiness = @happiness + 3 
        self.happiness = rise_happiness
        rise_friend_happiness = friend.happiness + 3
        friend.happiness = rise_friend_happiness
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == 'politics'
            self_happiness = self.happiness - 2
            self.happiness = self_happiness
            friend_happines_decrease = friend.happiness - 2
            friend.happiness = friend_happines_decrease
            "blah blah partisan blah lobbyist"
        elsif topic == 'weather'
            self_happiness = self.happiness + 1
            self.happiness = self_happiness
            friend_happines_decrease = friend.happiness + 1
            friend.happiness = friend_happines_decrease
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end

end