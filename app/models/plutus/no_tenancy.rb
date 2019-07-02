module Plutus
  module NoTenancy
    extend ActiveSupport::Concern

    included do
      validates :name, presence: true, uniqueness: { scope: [:scope_id, :scope_type] }
    end
  end
end
