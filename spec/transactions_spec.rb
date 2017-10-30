require './lib/transaction.rb'

describe Transaction do
  subject(:transaction) {described_class.new}

  it 'is instantiated with an empty array for transactions' do
    expect(transaction.transactions).to eq []
  end
end
