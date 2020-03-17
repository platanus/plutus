# lib/generators/plutus/plutus_generator.rb
require 'rails/generators'
require 'rails/generators/migration'
require_relative 'base_generator'

module Plutus
  class CurrencyGenerator < BaseGenerator
    def create_migration_file
      migration_template 'currency_migration.rb', 'db/migrate/currency_plutus_accounts.rb'
    end
  end
end
