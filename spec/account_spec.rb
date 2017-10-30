require './lib/account.rb'

describe Account do
  subject(:account) {described_class.new}

  it 'is instantiated with a balance of 0' do
    expect(account.balance).to eq 0
  end

  it 'is instantiated with an empty transactions array' do
    expect(account.transactions).to eq []
  end
end
