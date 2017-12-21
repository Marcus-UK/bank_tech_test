Bank Tech test
==============

#My approach

This is my submission for the Bank tech test. This implementation has been built
using a TDD design pattern in Ruby and is meant to demonstrate good OOP design
principles. In order to meet the requirements of the test, I have relied on the
following user stories:

```
As a customer,
So that I can put money in my account,
I want to be able to deposit money.

As a customer,
So that I can access my money,
I want to be able to withdraw money.


As a customer,
So that I can keep track of my account activity,
I want to be able to print off an account statement with dated transactions.

As a customer,
So that I have an organised list of transactions,
I want my statement to show them in reverse chronological order.
```

#Running this application

In order to run this project, you will need a version of Ruby installed on your
system. Once this is confirmed, please follow these steps:

1. Clone this repo into a local directory on your system.
2. Navigate to the directory that the project is located in.
3. Type bundle in to your command line to install the project dependencies
3. From your command line, run irb.
4. in irb, type in the following commands:
    'require './lib/account.rb'
    'account = Account.new'
    'account.add_payment(amount)' - Use this command to enter transactions
    'account.show_statement' - use this account to see your show_statement


#Testing

To run the tests on this software, type rspec in to your command line when
located in the root directory of the project.

#Technologies used

- Ruby
- Rspec
