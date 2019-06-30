class ScopePlutusAccounts < ActiveRecord::Migration[4.2]
  def change
    # add a scope column to plutus accounts table.
    add_column :plutus_accounts, :scope_id, :integer, index: true
    add_column :plutus_accounts, :scope_type, :string, index: true
  end
end
