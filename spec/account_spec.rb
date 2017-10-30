require './lib/account.rb'

describe Account do
  subject(:account) {described_class.new}

  it 'is instantiated with a balance of 0' do
    expect(account.balance).to eq 0
  end

  describe '# payment' do

    it 'changes the account balance by the amount of the payment' do
      account.payment(10)
      expect(account.balance).to eq 10
    end
  end
end
