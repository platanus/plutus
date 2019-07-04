module Plutus
  # The Amount class represents debit and credit amounts in the system.
  #
  # @abstract
  #   An amount must be a subclass as either a debit or a credit to be saved to the database.
  #
  # @author Michael Bulat
  class Amount < ApplicationRecord
    belongs_to :entry, class_name: 'Plutus::Entry'
    belongs_to :account, class_name: 'Plutus::Account'

    validates :type, :amount, :entry, :account, presence: true
    # attr_accessible :account, :account_code, :amount, :entry

    # Assign an account by code
    def account_code=(code)
      self.account = Account.find_by!(code: code)
    end
  end
end
