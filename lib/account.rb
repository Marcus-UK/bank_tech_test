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

  def show_statement
    puts "date || credit || debit || balance"
    create_statement
  end


  private

  def create_statement
    @transaction.transactions.reverse.each do |transaction|
      if transaction[:amount] > 0
        puts "#{transaction[:date]} || #{transaction[:amount]} || || #{transaction[:balance]}"
      else
        puts "#{transaction[:date]} || || #{transaction[:amount]} || #{transaction[:balance]}"
      end
    end
  end
end
