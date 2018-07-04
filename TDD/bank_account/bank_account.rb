class BankAccount
    #attr_accessor :account, :chk_balance, :sav_balance
    attr_reader :account, :chk_balance, :sav_balance, :total

    @@accounts = 0
    def initialize
        @account = rand(10000) # random Number
        @chk_balance = rand(10000)
        @sav_balance = rand(10000)
        @total
        @interest_rate = 0.01
        @@accounts +=1

    end 
    
    def checking
         print " My Checking Balance: $#{@chk_balance} \n"
        #"#{@chk_balance}"
        return self
    end    

    def saving
         print " My Saving Account Balance: $#{@sav_balance} \n"
        #"#{@sav_balance}"
        return self
    end 

    def deposit
        amount = 0
        puts
        print "Make a Deposit : $ "
        amount = gets
        print "Checking or Savings (enter: C or S)"
        account = gets.chomp
        #puts account
        #puts 'len:', account.length

        if(['C','c','checking'].include? account )      #(account == 'C')
            @chk_balance += amount.to_i
            checking
        else
            @sav_balance += amount.to_i
            saving
        end
        return self
    end

    def withdraw(amount,account) # revampled method for TDD purposes
        account_type = account
        if (amount > 500)
              return "Insufficient Funds"
        end         

      return self
    end

    
    # def withdraw
    #     amount = 0
    #     puts
    #     print "Make a Withdrawl : $ "
    #     amount = gets
    #     print "From Checking or Savings Account (enter: C or S)"
    #     account = gets.chomp
    #     #puts account
    #     #puts 'len:', account.length

    #     if(['C','c','checking'].include? account )      #(account == 'C')
    #         puts'Rejected: Insufficient funds'; checking; return self if @chk_balance < amount.to_i
    #         @chk_balance -= amount.to_i
    #         checking
    #     else
    #         puts'Rejected: Insufficient funds';saving; return self if @sav_balance < amount.to_i
    #         @sav_balance -= amount.to_i
    #         saving
    #     end
    #     return self
    # end

    def showTotal
        #checking
        #saving
        @total = @chk_balance + @sav_balance
        #print '    Bank Account Totals: $',total,"\n"
        return self
    end
    
    def account_information
        puts "      Bank Account Information:"
        print 'Account #',@account,"\n"
        showTotal
        print "   Interest Rate:", @interest_rate
    end
    
    # def self.accounts #unused
    #     @accounts +=1
    #     self
    # end
    
    def self.showAccounts
        print 'Total Bank Accounts: ',@@accounts
    end     

end


myAccount = BankAccount.new
print ' My Account #: ',myAccount.account,"\n"
print ' My Checking Balance: $',myAccount.chk_balance,"\n"
print ' My Saving Account #: $',myAccount.sav_balance,"\n"
print "\n\n"
puts 'Checking & Savings methods:'
myAccount.checking.saving
#myAccount.deposit
#myAccount.withdraw
#myAccount.showTotal
myAccount.account_information
puts
# myAccount.interest_rate   # test Failure successful
BankAccount.showAccounts
my2account = BankAccount.new
puts
BankAccount.showAccounts
myAccount.withdraw(600,'c')
# myAccount.showAccounts
#myAccount.interest_rate = 0.02











