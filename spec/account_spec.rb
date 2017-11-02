require './lib/account.rb'

describe Account do
  subject(:account) {described_class.new(transaction)}
  let(:transaction) { Transaction.new([{:date => '01/11/2017', :amount => 100, :balance => 100},
                     {:date => '01/11/2017', :amount => 500, :balance => 600},
                     {:date => '01/11/2017', :amount => -300, :balance => 300}]) }
  it 'is instantiated with a transaction object' do
    expect(account.transaction).to be_instance_of(Transaction)
  end

  describe '#payment' do

    it 'returns the value of the transaction after execution' do
      expect(account.add_payment(10)).to eq 10
    end

    it 'adds the amount of the payment to the transaction record' do
      account.add_payment(10)
      expect(account.transaction.transactions[3][:amount]).to eq 10
    end

    it 'adds the current account balance to the transaction record' do
      account.add_payment(10)
      expect(account.transaction.transactions[3][:balance]).to eq 310
    end
  end

  describe '#show_statement' do

    it 'displays a list of transactions along with a header' do
      expect{ account.show_statement }.to output("date || credit || debit || balance\n" +
      "01/11/2017 || || -300 || 300\n" +
      "01/11/2017 || 500 || || 600\n" +
      "01/11/2017 || 100 || || 100\n").to_stdout
      end
  end
end
