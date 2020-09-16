require 'pry'
class Person
    attr_accessor :bank_account, :happiness, :hygiene
    attr_reader :name
    # attr_writer 

    def initialize(bank_account=25,happiness=8,hygiene=8,name)
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
        @name = name
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


end