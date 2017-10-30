require './lib/transaction.rb'

describe Transaction do
  subject(:transaction) {described_class.new}

  it 'is instantiated with an empty array for transactions' do
    expect(transaction.transactions).to eq []
  end


  describe '# deposit_funds' do

    it 'adds a hash to the transactions array' do
      transaction.deposit_funds(10)
      expect(transaction.transactions[0]).to eq ({:amount => 10})
    end
  end
end
