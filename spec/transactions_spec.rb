require './lib/transaction.rb'

describe Transaction do
  subject(:transaction) {described_class.new}
  let(:date) { '25/12/2017'}
  it 'is instantiated with an empty array for transactions' do
    expect(transaction.transactions).to eq []
  end


  describe '# payment' do

    it 'adds a payment amount to a hash to be stored in transactions' do
      transaction.payment(10)
      expect(transaction.transactions[0][:amount]).to eq 10
    end

    it 'records the date of the transaction being stored in transactions' do
      transaction.payment(10, date)
      expect(transaction.transactions[0][:date]).to eq date
    end
  end




end
