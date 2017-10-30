class Account

  attr_reader :balance, :transactions

  def initialize(transactions = Transaction.new)
  @balance = 0
  @transactions = transactions
  end
end
