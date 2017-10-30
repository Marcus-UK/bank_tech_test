class Transaction

attr_reader :transactions

  def initialize
    @transactions = []
  end

  def deposit_funds(amount)
    @payment = {amount: amount}
    @transactions << @payment
  end

end
