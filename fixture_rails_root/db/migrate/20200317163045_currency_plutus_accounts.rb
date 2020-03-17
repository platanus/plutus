class CurrencyPlutusAccounts < ActiveRecord::Migration[4.2]
  def change
    add_column :plutus_accounts, :currency, :string
  end
end
