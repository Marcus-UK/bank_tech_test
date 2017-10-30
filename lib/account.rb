class Account

  attr_reader :balance, :transactions

  def initialize(transaction = Transaction.new)
  @balance = 0
  @transaction = transaction
  end

  def payment(amount)
    @transaction.payment(amount)
    @balance += amount
  end
end
