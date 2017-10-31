require_relative 'transaction.rb'

class Account

  attr_reader :balance, :transaction

  def initialize(transaction = Transaction.new)
  @balance = 0
  @transaction = transaction
  end

  def add_payment(amount)
    @transaction.payment(amount)
    @balance += amount
  end

  
end
