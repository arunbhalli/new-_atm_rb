# we completed the atm rb file
class Atm
    attr_accessor :funds

    def initialize
        @funds=1000
    end

    def withdraw(amount,account)

       case
       when insufficient_funds_in_account?(amount, account)
        {status:false, message:'insufficient funds', date: Time:now}
       else
        perform_transaction(amount, account)
        
    end
end



private
#changed the methods

def insufficient_funds_in_account?(amount, account)
    amount>account.balance
    
end

def perform_transaction(amount, account)
    @fund -= amount
    account.balance=account.balance-amount
    {status:true, message:'success', date: Time.now , amount:amount}
    
end
end

