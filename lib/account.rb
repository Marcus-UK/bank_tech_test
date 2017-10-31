require_relative 'transaction.rb'

class Account

  attr_reader :balance, :transaction

  def initialize(transaction = Transaction.new)
  @transaction = transaction
  end

  def add_payment(amount)
    @transaction.payment(amount)
    amount
  end


end
