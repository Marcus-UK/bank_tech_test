require './lib/account.rb'

describe Account do
  subject(:account) {described_class.new}
  let(:transactions) {double :transactions}

  it 'is instantiated with a transaction object' do
    expect(account.transaction).to be_instance_of(Transaction)
  end

  describe '#payment' do

    it 'returns the value of the transaction after execution' do
      expect(account.add_payment(10)).to eq 10
    end

    it 'adds the amount of the payment to the transaction record' do
      account.add_payment(10)
      expect(account.transaction.transactions[0][:amount]).to eq 10
    end

    it 'adds the current account balance to the transaction record' do
      account.add_payment(10)
      expect(account.transaction.transactions[0][:balance]).to eq 10
    end
  end
end
