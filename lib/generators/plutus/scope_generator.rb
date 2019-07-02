# lib/generators/plutus/plutus_generator.rb
require 'rails/generators'
require 'rails/generators/migration'
require_relative 'base_generator'

module Plutus
  class ScopeGenerator < BaseGenerator
    def create_migration_file
      migration_template 'scope_migration.rb', 'db/migrate/scope_plutus_accounts.rb'
    end
  end
end
