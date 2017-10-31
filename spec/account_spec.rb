require './lib/account.rb'

describe Account do
  subject(:account) {described_class.new}
  let(:transactions) {double :transactions}

  it 'is instantiated with a balance of 0' do
    expect(account.balance).to eq(0)
  end

  describe '#payment' do

    it 'increases the account balance if the payment amount is positive' do
      account.add_payment(10)
      expect(account.balance).to eq(10)
    end

    it 'decreases the account balance if the payment amount is negative' do
      account.add_payment(-10)
      expect(account.balance).to eq(-10)
    end
  end

  it 'adds the current account balance to the transaction record' do
    account.add_payment(10)
    expect(account.transaction.transactions[0][:balance]).to eq 10
  end

end
