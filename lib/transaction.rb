class Transaction

attr_reader :transactions

  def initialize
    @transactions = []
  end

  def payment(amount)
    @payment = {amount: amount}
    @transactions << @payment
  end



end
