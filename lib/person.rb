require 'pry'
class Person
    attr_accessor :bank_account
    attr_reader :name, :happiness, :hygiene
    # attr_writer 

    def initialize(bank_account=25,happiness=8,hygiene=8,name)
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @name = name
    end

    def hygiene=(clean)
        if clean < 0
            @hygiene = 0
        elsif clean > 10
            @hygiene = 10
        else
            @hygiene = clean
        end
    end

    def happiness=(smiles)
        if smiles < 0
            @happiness = 0
        elsif smiles > 10
            @happiness = 10
        else
            @happiness = smiles
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        if self.name == "Penelope"
            "Hi Felix! It's Penelope. How are you?"
        else 
            "Hi Penelope! It's Felix. How are you?"
        end
    end

    def start_conversation(person,topic)
        if topic == "politics"
         person.happiness -= 2  
         self.happiness -= 2 
         "blah blah partisan blah lobbyist"
        elsif topic == "weather"
        person.happiness += 1
        self.happiness += 1
        "blah blah sun blah rain"
        else
        "blah blah blah blah blah"
        end
    end

end