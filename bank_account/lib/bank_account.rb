class BankAccount
  attr_reader :account_number, :initial_deposit, :transactions

  def initialize(account_number, initial_deposit)
    @account_number = account_number
    @initial_deposit = initial_deposit
    @transactions = []
  end

  # def account_number #or use attr_reader
  #    @account_number
  # end

  def add_transaction(amount)
    @transactions << amount
  end

  def current_balance
    result = initial_deposit
    @transactions.each do |transaction|
      result += transaction
    end
    return result
  end

  def summary
    pretty_deposit = sprintf('%.2f', initial_deposit)
    result = "Account Number: #{account_number}\n"
    result += "Initial Deposit: $#{pretty_deposit}\n"
    result += "Transactions:\n"

    transactions.each do |transaction|
      pretty_transaction = sprintf('%.2f', transaction)
      result += " $#{pretty_transaction}"
  end
  pretty_balance = sprintf('%.2f', current_balance)
  result += "Current Balance: $#{pretty_balance}"
  result
end

  private
  def pretty(amount)
    sprintf('%.2f', amount)
  end
end
