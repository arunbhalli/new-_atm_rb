class Atm
    attr_accessor :funds

    def initialize
        @funds = 1000
    end

    def withdraw(amount, account)
        
        case 
        when insufficient_funds_in_account?(amount, account)
            {status: false, message: 'insufficient funds in account'}
        when insufficient_funds_in_atm?(amount)
            {status: false, message: 'insuffisient funds in ATM'} 
        else
            perform_transaction(amount, account)
            
        end
    end

    private

    def insufficient_funds_in_account?(amount, account)
        amount > account.balance
    end
    

    def perform_transaction(amount, account)
        @funds -= amount
        account.balance = account.balance - amount
        { status: true , message: 'success', amount: amount}
    end
    def insufficient_funds_in_atm?(amount)
        @funds < amount
        
    end






end
    

  
     
  
  
