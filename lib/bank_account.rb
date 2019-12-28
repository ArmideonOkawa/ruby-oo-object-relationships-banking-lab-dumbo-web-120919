class BankAccount
    attr_reader :name
    attr_accessor :balance, :status 
    @@all = []
    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"

        @@all << self
    end

    def deposit(cash_amount)
        self.balance += cash_amount
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    def close_account
        self.status = "closed"
    end

    def valid?
        balance > 0 && status == "open"
    end

    def self.all
        @@all
    end

end
