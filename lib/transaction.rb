require 'date'

class Transaction

attr_reader :transactions

  def initialize
    @transactions = []
  end

  def payment(amount, date = transaction_date)
    @payment = {date: date}
    @amount = {amount: amount}
    @payment.merge!(@amount)
    @transactions << @payment
  end

private

def transaction_date
  @date = Time.now
  @date.strftime("%d/%m/%Y")
end

end
