FactoryGirl.define do
  factory :account, :class => Plutus::Account do |account|
    account.code
    account.contra false
  end

  factory :asset, :class => Plutus::Asset do |account|
    account.code
    account.contra false
  end

  factory :equity, :class => Plutus::Equity do |account|
    account.code
    account.contra false
  end

  factory :expense, :class => Plutus::Expense do |account|
    account.code
    account.contra false
  end

  factory :liability, :class => Plutus::Liability do |account|
    account.code
    account.contra false
  end

  factory :revenue, :class => Plutus::Revenue do |account|
    account.code
    account.contra false
  end

  sequence :code do |n|
    "Factory Code #{n}"
  end
end
